# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MedicalCenterType.create(name: 'SANATORIO', description: "Don't want to....")
MedicalCenterType.create(name: 'HOSPITAL', description: "Don't want to....")
MedicalCenterType.create(name: 'SALITA PRIMEROS AUXILIOS', description: "Don't want to....")
MedicalCenterType.create(name: 'CLINICA', description: "Don't want to....")

MedicalCenter.create(name: 'SAP', medical_center_type_id: "1")
MedicalCenter.create(name: 'Hospital San Martin', medical_center_type_id: "2")
MedicalCenter.create(name: 'Salita Puiggari', medical_center_type_id: "3")
MedicalCenter.create(name: 'Clínica Belgrano', medical_center_type_id: "4")

WorkerType.create(name: 'Médico', description: "Medico general")
WorkerType.create(name: 'Enfermero', description: "Enfermero general")
WorkerType.create(name: 'Chofer', description: "Manejo de todo")

Worker.create(first_name: 'Juan', last_name: 'Aristarán', worker_type_id: "1")
Worker.create(first_name: 'Pablo', last_name: 'Kampf', worker_type_id: "3")
Worker.create(first_name: 'Susana', last_name: 'Miroslav', worker_type_id: "1")
Worker.create(first_name: 'Sergio', last_name: 'Macana', worker_type_id: "2")
Worker.create(first_name: 'Maria', last_name: 'Roblez', worker_type_id: "3")
Worker.create(first_name: 'Sergio', last_name: 'Macana', worker_type_id: "3")
