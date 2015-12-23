domain_list = [
  ['Assessoria de Comunicação', 'ascom', ''],
  ['Pró-Reitoria de Graduação', 'prograd', '<p>HTML referente a PROGRAD</p>'],
  ['Pró-Reitoria de Extensão', 'proex', '<p>HTML referente a PROEX</p>'],
  ['Pró-Reitoria de Pós-Graduação', 'posgrap', '']
]

domain_list.each do |title, subdomain, description|
  Domain.create(title: title, subdomain: subdomain, description: description)
end

# Getting created domains with ID
domains_with_content = [
  Domain.find_by!(subdomain: 'ascom'),
  Domain.find_by!(subdomain: 'posgrap')
]

(1..10).each do |n|
  domains_with_content.each do |domain|
    Content.create(
      title: "Lorem Ipsum ##{n}",
      description: '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>',
      domain: domain
    )
  end
end
