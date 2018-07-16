<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title>IoT@BPT</title>

    <style>
    .project {
      margin-bottom: 30px;
    }

    .project-image img {
      max-width: 100%;
    }

    .project-title {
      font-weight: bold;
    }

    .project-link {
      font-style: italic;
    }

    .footer {
      padding-top: 1.5rem;
      color: #777;
      border-top: .05rem solid #e5e5e5;
    }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="jumbotron">
        <h1>IoT@BPT</h1>
      </div>

      <p>
        The Internet of Things (IoT) is the inter-networking of physical objects (the things), being such things embedded systems with electronics hardware, software, sensors, actuators, and network connectivity. Such connected things collect and exchange data. Each thing is uniquely identifiable through its embedded computing system and is able to interoperate within the existing network infrastructure. The interconnection of these smart objects/things is expected to usher in automation in nearly all fields. This creates opportunities for more direct integration of the physical world into computer-based and digitized systems, and results in improved efficiency, accuracy, and economic benefits besides increased automation and reduced human intervention. Experts estimate that the IoT will consist of about 30 billion objects by 2020.
      </p>
      <p>
        Business Process Management is a well-established discipline that deals with the identification, discovery, analysis, (re-) design, implementation, execution, monitoring, and evolution of business processes. A business process is a collection of related events, activities, and decisions that involve a number of actors and resources and that collectively lead to an outcome that is of value for an organization or a customer. Examples of business processes include order-to-cash, procure-to-pay, application-to-approval, claim-to-settlement, or fault-to-resolution. To support business processes at an operational level, a BPM system (BPMS) can be used. As opposed to data- or function-centered information systems, a BPMS separates process logic from application code and, thus, provides an additional architectural layer. Typically, a BPMS provides generic services necessary for operational, software-enabled business process support, i.e., for process modeling, process execution, process monitoring, and user interaction (e.g., worklist management). 
      </p>

      <h2>Our Technology</h2>

      <div class="row">
        <div class="col-lg-6">
          <img src="img/technology.png" style="max-width: 100%" />
        </div>
        <div class="col-lg-6">
          <dl>
            <dt>Chimera Case Engine</dt>
            <dd>A process engine that can also execute case models according to the fragment-based case management approach (fCM) [14]. It supports user activities with forms for data entry, as well as automatically executed email and web-service tasks. Attributes of data objects can be used as variables in email text, web-service calls, and gateway conditions. </dd>

            <dt>Unicorn Event Processing Platform</dt>
            <dd>Unicorn, first described in [13], is the event processing platform of choice for the implementation of our approach. It is build around Esper4 and manages event types, event queries, and notifications both via a web-based UI and a REST API. </dd>

            <dt>Bosch IoT Cloud</dt>
            <dd>Our cloud services meet the requirements typical of IoT projects. Software developers can quickly set up prototype applications before implementing them, deploying them within minutes, and operating them at high availability.</dd>

            <dt>IoT Devices</dt>
            <dd>IoT Things enables applications to manage digital twins of their IoT device assets in a simple, convenient, robust, and secure way.</dd>
          </dl>
        </div>
      </div>

      <h2>Our Projects</h2>

      {% for project in projects %}
      <div class="row project">
        <div class="col-lg-8 {% if loop.index is divisibleby 2 %}order-lg-2{% endif %}">
          <p class="project-title">{{ project.title }}</p>

          <p>{{ project.description}}</p>
          
          <p class="project-link">
            Link to project page: <a href="{{ project.url }}">{{ project.url }}</a>
          </p>
        </div>
        <div class="col-lg-4 project-image {% if loop.index is divisibleby 2 %}order-lg-1{% endif %}">
          <img src="{{ project.image }}" />
        </div>
      </div>
      {% endfor %}

      <h2>Our Publications</h2>
      <!--
      <ul>
        <li>Janiesch, C., Koschmider, A., Mecella, M., Weber, B., Burattin, A., Ciccio, C.D., Gal, A., Kannengiesser, U., Mannhardt, F., Mendling, J., Oberweis, A., Reichert, M., Rinderle-Ma, S., Song, W., Su, J., Torres, V., Weidlich, M., Weske, M., Zhang, L.: <b>The internet-of-things meets business process management: Mutual benefits and challenges.</b>  CoRR abs/1709.03628 (2017)</li>
        <li>Mandal, S., Hewelt, M., Weske, M.: <b>A Framework for Integrating Real-World Events and Processes in an IoT Environment.</b> In: International Conference on Cooperative    Information Systems (CoopIS), Springer (2017)</li>
        <li>Völlker, M., Mandal, S., Hewelt, M.:  <b>Testing event-driven applications with automatically generated events.</b> In: Business Process Management (BPM) Demo Session, CEUR-WS.org (2017)</li>
        <li>Beyer, J., Kuhn, P., Hewelt, M., Mandal, S., Weske, M.:  <b>Unicorn meets Chimera: Integrating External Events into Case Management.</b>  In: Business Process Management (BPM) Demo Session, CEUR-WS.org (2016)</li>
        <li>Friedow, C., Völlker, M., Hewelt, M.: <b>Integrating IoT Devices into Business Processes.</b> In: Flexible Advanced Information Systems (co-located with CAiSE) (2018)</li>
      </ul>
      -->
      <ul>
        {% for publication in publications %}
        <li>{{ publication }}</li>
        {% endfor %}
      </ul>

      <h2>Other Related Publications</h2>

      <!--
      <ul>
        <li>BPM and IoT: The Signal of True Disruption</li>
        <li>The Internet of Things and Intelligent Business Process</li>
        <li>Why Is Business Process Management (BPM) Critical for IoT?</li>
      </ul>
      -->
      <ul>
        {% for publication in related_publications %}
        <li>{{ publication }}</li>
        {% endfor %}
      </ul>

      <h2>Contact</h2>

      <div class="row">
        <div class="col-lg-7">
          <p style="font-weight: bold">
            Business Process Technology Group <br />
            Hasso-Plattner-Institut fuer Digital Engineering gGmbH <br />
            Prof.-Dr.-Helmert-Str. 2-3, 14482 Potsdam, Germany <br />
            Email: iot-bpt@hpi.de  <br />
            Tel: +49 331 5509 180
          </p>
        </div>
        <div class="col-lg-5">
          <img src="img/team.png" style="max-width: 100%; margin-bottom: 1em" />
        </div>
      </div>

      <footer class="footer">
        <p>
          Business Process Technology Group | Disclaimer
        </p>
      </footer>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  </body>
</html>
