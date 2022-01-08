.class public Lorg/consenlabs/imtoken/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/WebViewActivity$MyWebChromeClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 13
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/WebViewActivity;->setContentView(I)V

    const p1, 0x7f090352

    .line 15
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    return-void
.end method
