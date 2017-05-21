class Video < ApplicationRecord
  belongs_to  :user
  belongs_to  :dance

  has_and_belongs_to_many     :parents,
    class_name:               "Video",
    join_table:               :video_links,
    foreign_key:              :parent_id,
    association_foreign_key:  :child_id

  has_and_belongs_to_many     :children,
    class_name:               "Video",
    join_table:               :video_links,
    foreign_key:              :child_id,
    association_foreign_key:  :parent_id

end
