.class public Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;
.super Ljava/lang/Object;
.source "UrlHandlerManager.java"


# instance fields
.field private final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;)V
    .locals 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 16
    iget-object v3, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method handle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;

    invoke-interface {v0, p1}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;->handle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method handle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandler;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
