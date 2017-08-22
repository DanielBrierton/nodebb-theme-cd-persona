
<header>
  <div class="cd-menu cd-menu__desktop-nav">
    <div class="cd-menu__first-row">
      <a href="/">
        <img src="{relative_path}/plugins/nodebb-theme-cd-persona/images/coderdojo-logo-light-bg.svg" width="120" height="44" />
      </a>
      <a href="https://coderdojo.com/donate/" class="cd-menu__donate-button">Donate</a>
      <!-- IF config.search-enabled -->
      <form id="search-form" class="cd-menu__search" role="search" method="GET" action="">
        <input class="cd-menu__search-input" type="text" placeholder="Search..." name="s" />
        <button class="cd-menu__search-button" type="submit"><span class="fa fa-search fa-2x"></span></button>
      </form>
      <!-- ENDIF config.search-enabled -->
      <div class="cd-menu__flex-spacer"></div>
      <!-- IF user.uid -->
      <div component="header/profilelink" class="cd-menu__profile" style="display: flex;">
        <!-- IF user.picture -->
        <div class="cd-menu__profile-pic" style="background-image: url({user.picture})"></div>
        <!-- ELSE -->
        <div class="cd-menu__profile-pic" style="background-image: url(https://zen.coderdojo.com/img/avatars/avatar.png)"></div>
        <!-- ENDIF user.picture -->
        <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
        <span class="cd-menu__profile-name">{user.username}</span>
        <i class="cd-menu__sub-menu-icon fa fa-chevron-down"></i>

        <ul component="header/usercontrol" class="cd-menu__profile-menu">
          <li>
            <a href="#" class="user-status" data-status="online">
              <i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
            </a>
          </li>
          <li>
            <a href="#" class="user-status" data-status="away">
              <i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
            </a>
          </li>
          <li>
            <a href="#" class="user-status" data-status="dnd">
              <i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
            </a>
          </li>
          <li>
            <a href="#" class="user-status" data-status="offline">
              <i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
            </a>
          </li>
          <li><a href="{relative_path}/user/{user.userslug}">Forum Profile</a></li>
          <li><a href="https://zen.coderdojo.com/dashboard/profile/edit">My Profile</a></li>
          <li><a href="https://zen.coderdojo.com/dashboard/my-dojos">My Dojos</a></li>
          <li><a href="https://zen.coderdojo.com/dashboard/dojos/events/user-events">My Events</a></li>
          <li class="cd-menu__cdf-admin-link"><a href="/dashboard/manage-dojos">Manage Dojos</a></li>
          <li class="cd-menu__cdf-admin-link"><a href="http://badgekit.coderdojo.com/">Badgekit</a></li>
          <li class="cd-menu__cdf-admin-link"><a href="/dashboard/stats">Stats</a></li>
          <li component="user/logout"><a href="#">Logout</a></li>
        </ul>
      </div>
      <!-- ELSE -->
      <div class="cd-menu__account" style="display: block;">
        <a href="/login">Login</a>
      </div>
      <!-- ENDIF user.uid -->
    </div>
    <ul class="cd-menu__second-row">
      <li><a href="https://coderdojo.com/about/">About</a></li>
      <li><a href="https://coderdojo.com/attend-a-dojo/">Attend a Dojo</a></li>
      <li><a href="https://coderdojo.com/volunteer/">Volunteer</a></li>
      <li><a href="https://coderdojo.com/start-a-dojo/">Create a Dojo</a></li>
      <li><a href="https://coderdojo.com/resources/">Resources</a></li>
      <li><a href="https://coderdojo.com/news/">News</a></li>
      <li class="cd-menu__dropdown">
        <span>
          Community
          <i class="cd-menu__dropdown-icon fa fa-chevron-down"></i>
          <ul>
            <li><a href="https://zen.coderdojo.com/badges">Badges</a></li>
            <li><a href="https://forums.coderdojo.com/">Forums</a></li>
            <li><a href="https://ninjaforums.coderdojo.com/">Ninja Forums</a></li>
            <li><a href="http://coolestprojects.org/">Coolest Projects</a></li>
          </ul>
        </span>
      </li>
    </ul>
    <nav class="header hidden-xs navbar navbar-default" id="header-menu" component="navbar">
      <!-- IMPORT partials/menu.tpl -->
    </nav>
  </div>
  <div class="cd-menu cd-menu__mobile-nav-bar">
    <button type="button" class="cd-menu__hamburger" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="cd-menu__hamburger-bar"></span>
      <span class="cd-menu__hamburger-bar"></span>
      <span class="cd-menu__hamburger-bar"></span>
    </button>
    <a href="/">
      <img src="{relative_path}/plugins/nodebb-theme-cd-persona/images/coderdojo-logo-light-bg.svg" width="120" height="44" style="padding-left: 5px;" />
    </a>
  </div>
  <div class="cd-menu__scrim"></div>
  <nav id="cd-menu__sliding-menu-primary" class="cd-menu__sliding-menu" data-toggle="closed">
    <div class="cd-menu__close-row">
      <span class="cd-menu__close-button">&times;</span>
    </div>
    <div class="cd-menu__content">
      <div class="cd-menu__content-block cd-menu__search">
        <input class="cd-menu__search-input" type="text" placeholder="Search...">
        <button class="cd-menu__search-button" type="button"><span class="fa fa-search fa-2x"></span></button>
      </div>
      <!-- IF !user.uid -->
      <div class="cd-menu__content-block cd-menu__account" style="display: block;">
        <a href="/login">Login</a>
      </div>
      <!-- ENDIF !user.uid -->
      <ul class="cd-menu__content-block">
        <!-- IF user.uid -->
        <li class="cd-menu__profile" style="display: flex;">
          <span>
            <!-- IF user.picture -->
            <div class="cd-menu__profile-pic" style="background-image: url({user.picture})"></div>
            <!-- ELSE -->
            <div class="cd-menu__profile-pic" style="background-image: url(https://zen.coderdojo.com/img/avatars/avatar.png)"></div>
            <!-- ENDIF user.picture -->
            <span class="cd-menu__profile-name">{user.username}</span>
            <i class="cd-menu__sub-menu-icon fa fa-chevron-right"></i>
          </span>
          <div class="cd-menu__sliding-menu cd-menu__sliding-menu-secondary" data-toggle="closed">
            <div class="cd-menu__close-row cd-bg-alt-white">
              <span class="cd-menu__back-button fa fa-chevron-left fa-lg"></span>
              <span class="cd-menu__close-button">&times;</span>
            </div>
            <div class="cd-menu__content">
              <div class="cd-menu__content-block cd-menu__profile-header">
                <!-- IF user.picture -->
                <div class="cd-menu__profile-pic" style="background-image: url({user.picture})"></div>
                <!-- ELSE -->
                <div class="cd-menu__profile-pic" style="background-image: url(https://zen.coderdojo.com/img/avatars/avatar.png)"></div>
                <!-- ENDIF user.picture -->
                <span class="cd-menu__profile-name"></span>
              </div>
              <ul class="cd-menu__content-block cd-menu__profile-menu">
                <li><a class="cd-menu__profile-link" href="{relative_path}/user/{user.userslug}">Forum Profile</a></li>
                <li><a href="https://zen.coderdojo.com/dashboard/profile/edit">My Profile</a></li>
                <li><a href="https://zen.coderdojo.com/dashboard/my-dojos">My Dojos</a></li>
                <li><a href="https://zen.coderdojo.com/dashboard/dojos/events/user-events">My Events</a></li>
                <li class="cd-menu__cdf-admin-link"><a href="/dashboard/manage-dojos">Manage Dojos</a></li>
                <li class="cd-menu__cdf-admin-link"><a href="http://badgekit.coderdojo.com/">Badgekit</a></li>
                <li class="cd-menu__cdf-admin-link"><a href="/dashboard/stats">Stats</a></li>
                <li component="user/logout"><a href="#">Logout</a></li>
              </ul>
            </div>
          </div>
        </li>
        <!-- ENDIF user.uid -->
        <li><a href="https://coderdojo.com/about/">About</a></li>
        <li><a href="https://coderdojo.com/attend-a-dojo/">Attend a Dojo</a></li>
        <li><a href="https://coderdojo.com/volunteer/">Volunteer</a></li>
        <li><a href="https://coderdojo.com/start-a-dojo/">Create a Dojo</a></li>
        <li><a href="https://coderdojo.com/resources/">Resources</a></li>
        <li><a href="https://coderdojo.com/news/">News</a></li>
        <li>
          <span>
            Community
            <i class="cd-menu__sub-menu-icon fa fa-chevron-right"></i>
          </span>
          <div class="cd-menu__sliding-menu cd-menu__sliding-menu-secondary" data-toggle="closed">
            <div class="cd-menu__close-row">
              <span class="cd-menu__back-button fa fa-chevron-left fa-lg"></span>
              <span class="cd-menu__close-button">&times;</span>
            </div>
            <div class="cd-menu__content">
              <div class="cd-menu__content-block cd-menu__header">
                <span>Community</span>
              </div>
              <ul class="cd-menu__content-block">
                <li><a href="https://zen.coderdojo.com/badges">Badges</a></li>
                <li><a href="https://forums.coderdojo.com/">Forums</a></li>
                <li><a href="https://ninjaforums.coderdojo.com/">Ninja Forums</a></li>
                <li><a href="http://coolestprojects.org/">Coolest Projects</a></li>
              </ul>
            </div>
          </div>
        </li>
        <li>
          <span>
            Forums
            <i class="cd-menu__sub-menu-icon fa fa-chevron-right"></i>
          </span>
          <nav id="menu" class="cd-menu__sliding-menu cd-menu__sliding-menu-secondary" data-toggle="closed">
            <div class="cd-menu__close-row">
              <span class="cd-menu__back-button fa fa-chevron-left fa-lg"></span>
              <span class="cd-menu__close-button">&times;</span>
            </div>
            <div class="cd-menu__content">
            <section component="header/profilelink" class="cd-menu__content-block menu-profile">
              <!-- IF user.uid -->
              <!-- IF user.picture -->
              <div class="cd-menu__profile-pic forum-avatar" style="background-image: url({user.picture})"></div>
              <!-- ELSE -->
              <div class="cd-menu__profile-pic forum-avatar" style="background-image: url(https://zen.coderdojo.com/img/avatars/avatar.png)"></div>
              <!-- ENDIF user.picture -->
              <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
              <!-- ENDIF user.uid -->
            </section>

            <section class="cd-menu__content-block cd-menu__header">
              <span>[[global:header.navigation]]</span>
            </section>
            <section class="cd-menu__content" data-section="navigation">
              <ul class="cd-menu__content-block menu-section-list"></ul>
            </section>

            <!-- IF user.uid -->
            <section class="cd-menu__content-block cd-menu__header">
              <span>[[global:header.profile]]</span>
            </section>
            <section class="cd-menu__content" data-section="profile">
              <ul component="header/usercontrol" class="cd-menu__content-block menu-section-list">
                <li>
                  <a component="header/profilelink" href="{relative_path}/user/{user.userslug}">
                    <span component="header/username">{user.username}</span>
                  </a>
                </li>
                <li>
                  <a href="#" class="user-status" data-status="online">
                    <i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
                  </a>
                </li>
                <li>
                  <a href="#" class="user-status" data-status="away">
                    <i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
                  </a>
                </li>
                <li>
                  <a href="#" class="user-status" data-status="dnd">
                    <i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
                  </a>
                </li>
                <li>
                  <a href="#" class="user-status" data-status="offline">
                    <i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
                  </a>
                </li>
                <li component="user/logout">
                  <a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
                </li>
              </ul>
            </section>

            <section class="cd-menu__content-block cd-menu__header">
              <span>
                [[global:header.notifications]]
                <span class="counter" component="notifications/icon" data-content="0"></span>
              </span>
            </section>
            <section class="cd-menu__content" data-section="notifications">
              <ul class="cd-menu__content-block menu-section-list notification-list-mobile" component="notifications/list"></ul>
            </section>

            <section class="cd-menu__content-block cd-menu__header">
              <span>
                [[global:header.chats]]
                <i class="counter" component="chat/icon" data-content="0"></i>
              </span>
            </section>
            <section class="cd-menu__content menu-section" data-section="chats">
              <ul class="cd-menu__content-block menu-section-list chat-list"></ul>
            </section>
            <!-- ENDIF user.uid -->
          </nav>
        </li>
        <li><a href="https://coderdojo.com/donate/">Donate</a></li>
      </ul>
    </div>
  </nav>
  <script type="text/javascript">
    window.cdMenu({
      zenBase: 'https://zen.coderdojo.com/',
      loadProfileFromZen: false
    });
  </script>
</header>
