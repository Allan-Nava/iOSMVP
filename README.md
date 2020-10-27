# iOSMVP


### MVC was adopted by Apple as an official architectural pattern for iOS. Where :

- The view : is a xib file (or a UIView subclass).
- The Controller : A UIViewController subclass, which receives actions and events from the view and updates it.
- And Models : that are a representation of your data.

<img src="https://github.com/Allan-Nava/iOSMVP/blob/main/1_xoRTTRc4ARkBL_YdlThY-g.png?raw=true">

### The problematic :

MVC intended initially to distribute the applications components among separate pieces. But generally the result was :
Lack of Distribution : The controller ends up doing all the job. from handling user interactions, to setting up views. doing network calls, data parsing and so and so on…
This is also known as Massive view controller.
Low test coverage : Apart from breaking the single responsibility principle. the controller is tightly linked to the view lifecycle. testing view controllers becomes a tough task.

## MVP As an alternative :

Then MVP architecture comes to improve this situation. by adding the main component which is Presenter.

<img src="https://miro.medium.com/max/1366/1*es5q02G0YfjnNi5POob2nQ.png">

Now the viewController is considered as a view. which means it will include only the view related code, nothing more. and all logic will be implemented in the presenter.
Then components description becomes as the following :

- View : The view now consists of both views and view controllers, with all UI setup and events.
- Presenter : The presenter will be in charge of all the logic , including responding to user actions and updating the UI (via delegate). and the most important is that our presenter will not be UIKit dependent. which means well isolated, hence easily testable ;)
- Model : the model role will be exactly the same

It’s important to note that MVP uses passive View pattern. it means all the actions will be forwarded to the presenter. Which will trigger the ui updates using delegates. so the view will only passe actions and listen to the presenter updates.


Source: https://medium.com/@saad.eloulladi/ios-swift-mvp-architecture-pattern-a2b0c2d310a3
