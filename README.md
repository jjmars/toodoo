TooDoo
===

Task list SPA in Ruby on Rails

Ruby, Rails and database
---

* MRI Ruby 2.2.3
* Rails 4.2.4
* Postgresql

Test suite
---

Tests will be built as soon as the app becomes real -- it's being sculpted

Deployment
---

Before deploying to production, deploy to staging. Commit to `release` and the app will be automatically deployed to [http://apptoodoo.herokuapp.com](http://apptoodoo-staging.herokuapp.com). Migrate the database schema if needed.

Fix any issues that arise. When the app is ready, deploy to production. Commit to `master` and the app will be automatically deployed to [http://apptoodoo.herokuapp.com](http://apptoodoo.herokuapp.com). Migrate the database schema if needed.

Versioning
---

* Commit **production** versions to `master`. **THE COMMIT WILL BE DEPLOYED AUTOMATICALLY TO PRODUCTION.**
* Commit **staging** versions to `release`. **THE COMMIT WILL BE DEPLOYED AUTOMATICALLY TO STAGING.**
* Commit complete features to `develop`.
* Commit features in progress **locally** to any other branch. **DON'T PUSH THESE TO ORIGIN.**

License
---

MIT License

Copyright (c) 2016 João Marcelo Oliveira de Souza

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.