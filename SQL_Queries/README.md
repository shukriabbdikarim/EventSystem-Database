Reflection,
Why I chose these entities,
I chose the entities Event, Venue, Participant, Ticket and Payment because they cover the main parts of an event system. An event needs a venue, participants can book tickets, and payments are linked to participants. This structure makes the system clear and easy to understand.

Normalization,
The database is normalized by separating data into different tables. For example, venue information is stored only once in the Venue table and referenced from Event. This reduces duplicated data and makes updates easier.

Data constraints,
Primary keys are used in all tables to uniquely identify records. Foreign keys are used to connect related tables and ensure data integrity. The Email field in Participant is unique to prevent duplicate users.

Improvements,
Next step would be to add more validation, for example checking ticket availability and improving payment handling. I would also add indexes to improve performance.
