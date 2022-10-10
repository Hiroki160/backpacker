class Country < ActiveHash::Base
  include ActiveHash::Associations
  
  has_many :guesthouses
  
  self.data = [
    { id: 1, name: '--' }, { id: 2, name: 'フランス' }, { id: 3, name: 'スペイン' },
    { id: 4, name: 'イタリア' }, { id: 5, name: 'トルコ' }, { id: 6, name: 'カンボジア' },
    { id: 7, name: 'ベトナム' }, { id: 8, name: 'ラオス' }, { id: 9, name: 'タイ' },
    { id: 10, name: 'メキシコ' }, { id: 11, name: 'チリ' }, { id: 12, name: 'ブラジル' },
    { id: 13, name: 'アルゼンチン' }
  ]

end