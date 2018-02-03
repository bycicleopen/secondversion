<?php
class ModelCatalogAttributeGroup extends Model {

    public function getMyAttributeGroups()
    {
        //$sql = "SELECT * FROM " . DB_PREFIX . "attribute_group " ;
        $sql = "SELECT agd.name, ag.sort_order FROM " . DB_PREFIX . "attribute_group ag LEFT JOIN " . DB_PREFIX . "attribute_group_description agd ON (ag.attribute_group_id = agd.attribute_group_id) WHERE agd.language_id = '" . (int)$this->config->get('config_language_id') . "' and ag.sort_order BETWEEN 100 and 150";
        $query = $this->db->query($sql);
        return $query->rows;

    }

    public function getAttributeGroups($data = array()) {
        $sql = "SELECT * FROM " . DB_PREFIX . "attribute_group ag LEFT JOIN " . DB_PREFIX . "attribute_group_description agd ON (ag.attribute_group_id = agd.attribute_group_id) WHERE agd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

        $sort_data = array(
            'agd.name',
            'ag.sort_order'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
            $sql .= " ORDER BY " . $data['sort'];
        } else {
            $sql .= " ORDER BY agd.name";
        }

        if (isset($data['order']) && ($data['order'] == 'DESC')) {
            $sql .= " DESC";
        } else {
            $sql .= " ASC";
        }

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }

            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function getAttributeGroupDescriptions($attribute_group_id) {
        $attribute_group_data = array();

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "attribute_group_description WHERE attribute_group_id = '" . (int)$attribute_group_id . "'");

        foreach ($query->rows as $result) {
            $attribute_group_data[$result['language_id']] = array('name' => $result['name']);
        }

        return $attribute_group_data;
    }
}