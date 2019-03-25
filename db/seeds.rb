ADMIN_EMAIL = 'algobasket@gmail.com'
ADMIN_PASSWORD = '9E6kF!96T6aT6mlY#S2k5w6sKojttkc!cuLmWcdzTYZTXVNLltL0v1nvbpkP6f0l'

admin_identity = Identity.find_or_create_by(email: ADMIN_EMAIL)
admin_identity.password = admin_identity.password_confirmation = ADMIN_PASSWORD
admin_identity.is_active = true
admin_identity.save!

admin_member = Member.find_or_create_by(email: ADMIN_EMAIL)
admin_member.authentications.build(provider: 'identity', uid: admin_identity.id)
admin_member.save!

if Rails.env == 'development'
  NORMAL_PASSWORD = '4WCgTKnWHrzDKIsBhkTYsEvYw3o0!WlhuRzIhsrygY2afMv6ljx!ATURe7x4x4dg'

  foo = Identity.create(email: 'kripanidhi@live.com', password: NORMAL_PASSWORD, password_confirmation: NORMAL_PASSWORD, is_active: true)
  foo_member = Member.create(email: foo.email)
  foo_member.authentications.build(provider: 'identity', uid: foo.id)
  foo_member.tag_list.add 'vip'
  foo_member.tag_list.add 'hero'
  foo_member.save

  bar = Identity.create(email: 'developer@algobasket.com', password: NORMAL_PASSWORD, password_confirmation: NORMAL_PASSWORD, is_active: true)
  bar_member = Member.create(email: bar.email)
  bar_member.authentications.build(provider: 'identity', uid: bar.id)
  bar_member.tag_list.add 'vip'
  bar_member.tag_list.add 'hero'
  bar_member.save
end
