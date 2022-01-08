.class public Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;
.super Lcom/reactnativecommunity/webview/RNCWebViewManager;
.source "DAppBrowser.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "IMTDAppBrowser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "IMTDAppBrowser"


# instance fields
.field private jsInjectorClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;",
            ">;"
        }
    .end annotation
.end field

.field private webViewClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->jsInjectorClientMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->webViewClientMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 49
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V
    .locals 3

    .line 69
    new-instance p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;-><init>()V

    .line 70
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->jsInjectorClientMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;

    new-instance v1, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;

    invoke-direct {v1, v2}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;-><init>([Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;)V

    invoke-direct {v0, p0, p1, v1}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;-><init>(Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;)V

    .line 72
    iget-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->webViewClientMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMTDAppBrowser"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->onDropViewInstance(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/webkit/WebView;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->onDropViewInstance(Landroid/webkit/WebView;)V

    .line 98
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->jsInjectorClientMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->webViewClientMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 88
    iget-object p2, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->webViewClientMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->onReload()V

    :cond_0
    return-void
.end method

.method public setInitialJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "initialJavaScript"
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;->jsInjectorClientMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->setDAppSDK(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
