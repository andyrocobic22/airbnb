  ## roomsテーブル

|Column|Type|Options|
|------|----|-------|
|category_id|integer||
|building_type_id|integer||
|type_id|integer||
|address_id|integer||
|bed_id|integer||
|bed_detail_id|integer||
|amenity_id|integer||
|bath_id|integer||
|space_id|integer||
|charge_id|integer||
|discount_id|integer||
|night_id|integer||
|image_id|integer||
|reserve_id|integer||
|explain_id|integer||
|house_rule_id|integer||
|beforehand_id|integer||


### Association
- has_many :categories through: :rooms_categories
- has_many :building_types through: :rooms_building_types
- has_many :types through: :rooms_types
- has_many :addresses through: :rooms_addresses
- has_many :beds through: :rooms_beds
- has_many :bed_details through: :rooms_bed_details
- has_many :amenities through: :rooms_amenities
- has_many :bathes through: :rooms_bathes
- has_many :spaces through: :rooms_spaces
- has_many :charges through: :rooms_charges
- has_many :discounts through: :rooms_discounts
- has_many :nights through: :rooms_nights
- has_many :images through: :rooms_images
- has_many :reserves through: :rooms_reserves
- has_many :explains through: :rooms_explains
- has_many :house_rules through: :rooms_house_rules
- has_many :beforehands through: :rooms_beforehands

