class PlayTime < ActiveHash::Base
  self.data = [
    { id: 1, name: "_ _" },
    { id: 2, name: "午前中（6時〜12時）" },
    { id: 3, name: "昼間（13〜16時）" },
    { id: 4, name: "夕方（17〜19時" },
    { id: 5, name: "夜（20〜23時）" },
    { id: 6, name: "深夜（23〜5時）" }
  ]
end
