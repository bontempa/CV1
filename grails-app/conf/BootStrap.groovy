import com.cv.User
import com.cv.Role
import com.cv.UserRole

class BootStrap {

    def springSecurityService

    def init = { servletContext ->

        def alexRole = Role.findByAuthority('ROLE_USER_ALEX') ?: new Role(authority: 'ROLE_USER_ALEX').save(failOnError: true)

         def alex = User.findByUsername('alex') ?: new User(
                         username: 'alex',
                         password: springSecurityService.encodePassword('password'),
                         enabled: true).save(failOnError: true)

                 if (!alex.authorities.contains(alexRole)) {
                     UserRole.create alex, alexRole
     }

         def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
         def adminUser = User.findByUsername('admin') ?: new User(
                         username: 'admin',
                         password: springSecurityService.encodePassword('admin'),
                         enabled: true).save(failOnError: true)
                 if (!adminUser.authorities.contains(adminRole)) {
                     UserRole.create adminUser, adminRole
                 }

    }
    def destroy = {
    }
}
