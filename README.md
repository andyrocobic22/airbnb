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
- has_many :house_rules
- has_many :images through: :room_image
- has_many :situations through: :room_situation
- has_many :amenities through: :room_amenity
- has_many :spaces through: :rooms_space
- has_many :add_orders through: :room_add_order
- has_many :beforehands through: :room_beforehand


## adressesテーブル

|Column|Type|Options|
|------|----|-------|
|country|integer|null:false
|mail-number|integer|null:false
|prefecture|integer|null:false
|city|string|null:false
|city-detail|string|null:false|
|room-number|integer||
|room_id|integer|null:false|

### Association
- belongs_to :room

## bedroomsテーブル

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false|
|bed_room_number|integer|null:false|
|double|integer||
|queen|integer||
|single|integer||
|king|integer||

### Association
- belongs_to :room

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|category|integer|null:false|

### Association
- has_many :buildings through: :category-building


## bulidingsテーブル

|Column|Type|Options|
|------|----|-------|
|buliding|integer|null:false|

### Association
- has_many :categories through: :category-building

### category-buildingテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|category_id|integer|null:false,foreign_key: true|
|building_id|integer|null:false,foreign_key: true|

### Association
- belongs_to :category
- belongs_to :building


## Amenititesテーブル

|Column|Type|Options|
|------|----|-------|
|amenity|integer||

### Association
- has_many :rooms through: :room_amenity

### room_amenityテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|amenity_id|boolean|default:false,null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :amenity

## spacesテーブル

|Column|Type|Options|
|------|----|-------|
|space|integer||

### Association
- has_many :rooms through: :room_space

### room_spaceテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|space_id|boolean|default:false,null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :space

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image_url|string|null:false|

### Association
- has_many :rooms through: :room_image

### room_imageテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|image_id|integer|null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :image


## situaitonsテーブル

|Column|Type|Options|
|------|----|-------|
|situation|integer||

### Association
- has_many :rooms through: :room_situation

### room_situationテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|situation_id|boolean|default:false,null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :situation


## add_ordersテーブル

|Column|Type|Options|
|------|----|-------|
|add_order|integer||

### Association
- has_many :rooms through: :room_add_order

### room_add_orderテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|add_order_id|boolean|default:false,null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :add_order


## house_ruleテーブル

|Column|Type|Options|
|------|----|-------|
|kid|boolean|default:false|
|kid_reason|text||
|baby|boolean|default:false|
|baby_reason|text||
|pet|boolean|default:false|
|smoke|boolean|default:false|
|event_party|boolean|default:false|
|room_id|integer|null:false,foreign_key: true|


### Association
- has_many :rooms



## beforehandsテーブル

|Column|Type|Options|
|------|----|-------|
|beforehands|integer||

### Association
- has_many :rooms through: :room_beforehand

### room_beforehandsテーブル（中間）

|Column|Type|Options|
|------|----|-------|
|room_id|integer|null:false,foreign_key: true|
|beforehand_id|boolean|default:false,null:false,foreign_key: true|

### Association
- belongs_to :room
- belongs_to :beforehand

