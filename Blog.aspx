<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Blog.aspx.vb" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Blog.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="blog">
    <h2>Our Blog</h2>
    <p class="blog-intro">
        Making better choices today can have a big impact on your health. 
        We are here to help you get healthier and feel better with free tips, tools and support.
    </p>
    <section class="blog-frame">

        <section class="blog-box">
            <section class="title">
                <asp:Image ID="covid" runat="server" CssClass="article-img" ImageUrl="~/images/coronavirus.png"></asp:Image><br />
                <strong class="article-name">COVID-19</strong>   
            </section>
            <article>
                <p class="article-txt">Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus.
                Most people who fall sick with COVID-19 will experience mild to moderate symptoms and recover without special treatment. However, some will become seriously ill and require medical attention.
                The virus can spread from an infected person’s mouth or nose in small liquid particles when they cough, sneeze, speak, sing or breathe. These particles range from larger respiratory droplets to smaller aerosols.</p>
                <asp:HyperLink ID="covid19" runat="server" 
        NavigateUrl="https://www.who.int/health-topics/coronavirus#tab=tab_1" CssClass="readmore-link">Read More</asp:HyperLink>
            </article>
            </article>
        </section>

        <section class="blog-box">
            <section class="title">
                <asp:Image ID="money_pox" runat="server" CssClass="article-img" ImageUrl="~/images/monkey-pox.png"></asp:Image><br />
                <strong class="article-name">Monkey Pox</strong>   
            </section>
            <article>
                <p class="article-txt">Monkeypox is a disease caused by the monkeypox virus. It is a viral zoonotic disease, meaning that it can spread from animals to humans. It can also spread between people.</p>
                <asp:HyperLink ID="monkeypox" runat="server" 
        NavigateUrl="https://www.who.int/news-room/questions-and-answers/item/monkeypox?gclid=CjwKCAjw46CVBhB1EiwAgy6M4klSnRpiTibaoHV6akHNT_kIlTsOEi0-t8k-gVhNM0zd_6w4KjJc1hoCRYYQAvD_BwE" CssClass="readmore-link">Read More</asp:HyperLink>
            </article>
        </section>

        <section class="blog-box">
            <section class="title">
                <asp:Image ID="dengue" runat="server" CssClass="article-img" ImageUrl="~/images/dengue.png"></asp:Image><br />
                <strong class="article-name">Dengue</strong>   
            </section>
            <article>
                <p class="article-txt">Dengue is a mosquito-borne viral infection that is common in warm, tropical climates. 
                Infection is caused by any one of four closely related dengue viruses (called serotypes) and these can lead to a wide spectrum of symptoms, including some which are extremely mild (unnoticeable) to those that may require medical intervention and hospitalization. In severe cases, fatalities can occur. 
                There is no treatment for the infection itself but the symptoms that a patient experiences can be managed.</p>
                <asp:HyperLink ID="something" runat="server" 
        NavigateUrl="https://www.who.int/health-topics/dengue-and-severe-dengue#tab=tab_1" CssClass="readmore-link">Read More</asp:HyperLink>
            </article>
        </section>

        <section class="blog-box">
            <section class="title">
                <asp:Image ID="influenza" runat="server" CssClass="article-img" ImageUrl="~/images/influenza.png"></asp:Image><br />
                <strong class="article-name">Influenza</strong>   
            </section>
            <article>
                <p class="article-txt">Influenza virus types A and B are both common causes of acute respiratory illnesses, 
                although influenza A viruses are the principal cause of large epidemics, as well as pandemics. 
                Children are efficient transmitters of influenza viruses and those 5-9 years of age typically manifest the highest rates of infection and illness. 
                However, severe mobidity and mortality are more common among elderly people and in specific high-risk groups. 
                Although morbidity, mortality and affected risk groups appear to be similar all over the world, 
                in many developing countries the disease burden and socioeconomic impact of influenza are largely unknown.</p>
                <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="https://www.who.int/teams/health-product-policy-and-standards/standards-and-specifications/vaccines-quality/influenza" CssClass="readmore-link">Read More</asp:HyperLink>
            </article>
        </section>

    </section>
  </section>
</asp:Content>

