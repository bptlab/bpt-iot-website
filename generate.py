#!/usr/bin/env python3

import jinja2
import time

projects = [
    {
        "title" : "Smile: Last-Mile Logistics & IoT",
        "description" : "Organizations use process models to document, improve, and automate their business processes. Smartphone Apps, IoT-Devices, etc. offer the possibility to react fast and flexible on customer demands which can be not captured with existing process modeling concepts. The last mile logistic has gained higher relevance, because of the increase in the e-commerce. Our group has a industry-research project called SMile where new delivery options will be developed and tested. This requires a flexible, customer-oriented process management approach.",
        "url" : "https://www.smileproject.de",
        "image" : "img/project_smile.png"
    },
    {
        "title" : "Early Warning Dashboard with Bosch Thermotechnik",
        "description" : "The cooperation partner was Bosch Thermotechnik (BoschTT), a German company that produces heaters for both private and commercial use. In 2015 it was the leading vendor of Smart-Heating components. Our project addresses these Smart-Heating components. The goal of it was to develop a dashboard application to monitor the heaters of BoschTT via the events they send. Because of the provided visualization and analysis it would be a lot easier to optimize the early warning process and prevent failures from happening again.",
        "url" : "https://boschproject.de",
        "image" : "img/project_bosch.png"
    },
    {
        "title" : "Sensoren im Spargelfeld - Smarte Prozesse im Internet der Dinge",
        "description" : "Prozessmodelle beschreiben komplexe Arbeitsabläufe in Unternehmen. In der Praxis gibt es häufig eine Vielzahl von Prozessvarianten, deren Entwicklung und Implementierung sehr aufwändig ist. Production Case Management (PCM) ist ein neuartiger Ansatz zur Modellierung und Ausführung von Prozessvarianten. Anstatt einen Prozess in nur einem Modell zu erfassen werden Prozessfragmente benutzt (siehe rechts), die bei der Ausführung gemäß einer definierten Semantik durch Anwender logisch verknüpft werden können. rganizations use process models to document, improve, and automate their business processes. Smartphone Apps, IoT-Devices, etc. offer the possibility to react fast and flexible on customer demands which can be not captured with existing process modeling concepts. The last mile logistic has gained higher relevance, because of the increase in the e-commerce. Our group has a industry-research project called SMile where new delivery options will be developed and tested. This requires a flexible, customer-oriented process management approach.",
        "url" : "https://boschproject.de",
        "image" : "img/project_spargel.png"
    },
    {
        "title" : "Get Services: Efficient Transportation Planning and Execution",
        "description" : "The GET Service platform provides transportation planners with the means to plan transportation routes more efficiently and to respond quickly to unexpected events during transportation. To this end, it connects to existing transportation management systems and improves on their performance by enabling sharing of selected information between transportation partners, logistics service providers and authorities. By improving the modal split in Europe by just 2% and the number of empty miles by just 1%, the total energy cost of transportation can be reduced by around 2.3 billion liters of diesel, while the total CO2 emission in the EU can be decreased by 6.5 million ton.",
        "url" : "https://getservice-project.eu",
        "image" : "img/project_get.png"
    },
]

publications = [
    "Janiesch, C., Koschmider, A., Mecella, M., Weber, B., Burattin, A., Ciccio, C.D., Gal, A., Kannengiesser, U., Mannhardt, F., Mendling, J., Oberweis, A., Reichert, M., Rinderle-Ma, S., Song, W., Su, J., Torres, V., Weidlich, M., Weske, M., Zhang, L.: <b>The internet-of-things meets business process management: Mutual benefits and challenges.</b>  CoRR abs/1709.03628 (2017)",
    "Mandal, S., Hewelt, M., Weske, M.: <b>A Framework for Integrating Real-World Events and Processes in an IoT Environment.</b> In: International Conference on Cooperative    Information Systems (CoopIS), Springer (2017)",
    "Völlker, M., Mandal, S., Hewelt, M.:  <b>Testing event-driven applications with automatically generated events.</b> In: Business Process Management (BPM) Demo Session, CEUR-WS.org (2017)",
    "Beyer, J., Kuhn, P., Hewelt, M., Mandal, S., Weske, M.:  <b>Unicorn meets Chimera: Integrating External Events into Case Management.</b>  In: Business Process Management (BPM) Demo Session, CEUR-WS.org (2016)",
    "Friedow, C., Völlker, M., Hewelt, M.: <b>Integrating IoT Devices into Business Processes.</b> In: Flexible Advanced Information Systems (co-located with CAiSE) (2018)"
]

related_publications = [
    "BPM and IoT: The Signal of True Disruption",
    "The Internet of Things and Intelligent Business Process",
    "Why Is Business Process Management (BPM) Critical for IoT?"
]

if __name__ == "__main__":
    template = jinja2.Template(open("index.html.tpl").read())
    context = {"projects" : projects, "publications" : publications, "related_publications" : related_publications}

    f = open("index.html", "w")
    f.write(template.render(context))
    f.close()
