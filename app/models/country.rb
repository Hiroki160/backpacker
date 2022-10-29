class Country < ActiveHash::Base
  include ActiveHash::Associations

  has_many :guesthouses
  has_many :restaurants
  has_many :activities


  self.data = [
    { id: 1, name: 'ベトナム' }, { id: 2, name: 'タイ' }, { id: 3, name: 'カンボジア' },
    { id: 4, name: 'インド' }, { id: 5, name: 'ラオス' }, { id: 6, name: '台湾' },
    { id: 7, name: 'インドネシア' }, { id: 8, name: 'フィリピン' }, { id: 9, name: 'マレーシア' },
    { id: 10, name: '韓国' }, { id: 11, name: '中国' }, { id: 12, name: 'シンガポール' },
    { id: 13, name: 'バングラデシュ' }, { id: 14, name: 'ネパール' }
  ]

end