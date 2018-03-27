  ## roomsテーブル

|Column|Type|Options|
|------|----|-------|
|category|integer||
|building|integer||
|room_type_id|integer||
|guest_room|integer||
|capacity|integer||
|bed_number|integer||
|bath_room|integer||
|overview|text||
|house|text||
|range|text||
|communication|text||
|others|text||
|area|text||
|trans|text||
|ever|integer||
|frequency|integer|
|deadline|integer||
|checkin|integer||
|checkout|integer||
|limit|integer||
|start|integer||
|end|integer||
|charg-setting|integer||
|min-charge|integer||
|basic-charge|integer||
|max-charge|integer||
|currency|integer||
|special|integer||
|week|integer||
|mounth|integer||



### Association
- has_many :bed_rooms
- has_many :addresses
- has_many :images through: :rooms_images
- has_many :situations through: :rooms_situations
- has_many :amenities through: :rooms_amenities
- has_many :spaces through: :rooms_spaces
- has_many :add_oreders through: :rooms_add_oreders
- has_many :house_rules through: :rooms_house_rules
- has_many :beforehands through: :rooms_beforehands




