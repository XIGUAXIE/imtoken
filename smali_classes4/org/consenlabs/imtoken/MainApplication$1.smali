.class Lorg/consenlabs/imtoken/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/MainApplication;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/MainApplication;Landroid/app/Application;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/consenlabs/imtoken/MainApplication$1;->this$0:Lorg/consenlabs/imtoken/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public getJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/microsoft/codepush/react/CodePush;->getJSBundleFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/facebook/react/PackageList;

    invoke-direct {v0, p0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    new-instance v1, Lorg/consenlabs/imtoken/TokenPackage;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/TokenPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowserPackage;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowserPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lorg/consenlabs/imtoken/httpcache/HttpCachePackage;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/httpcache/HttpCachePackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
