.class public Lorg/consenlabs/imtoken/dappbrowser/DAppBrowserModule;
.super Lcom/reactnativecommunity/webview/RNCWebViewModule;
.source "DAppBrowserModule.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMTDAppBrowserModule"

    return-object v0
.end method
