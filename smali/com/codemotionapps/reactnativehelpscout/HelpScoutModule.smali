.class public Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "HelpScoutModule.java"


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    iput-object p1, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 29
    new-instance v0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;

    new-instance v1, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;

    invoke-direct {v1, p0, p1}, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;-><init>(Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    new-instance v2, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$2;

    invoke-direct {v2, p0, p1}, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$2;-><init>(Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-direct {v0, v1, v2}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;-><init>(Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;Lcom/helpscout/beacon/ui/BeaconOnClosedListener;)V

    .line 48
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 71
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 73
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "email"

    if-eq v1, v2, :cond_0

    const-string v2, "name"

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/helpscout/beacon/Beacon;->addAttributeWithKey(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public contactForm()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->CONTACT_FORM_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/ui/BeaconActivity;->open(Landroid/content/Context;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V

    return-void
.end method

.method public dismiss(Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNHelpScoutBeacon"

    return-object v0
.end method

.method public identify(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->getEntryIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 85
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "email"

    if-eq v1, v2, :cond_0

    const-string v2, "name"

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/helpscout/beacon/Beacon;->addAttributeWithKey(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 59
    new-instance v0, Lcom/helpscout/beacon/Beacon$Builder;

    invoke-direct {v0}, Lcom/helpscout/beacon/Beacon$Builder;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/Beacon$Builder;->withBeaconId(Ljava/lang/String;)Lcom/helpscout/beacon/Beacon$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/helpscout/beacon/Beacon$Builder;->build()Lcom/helpscout/beacon/Beacon;

    return-void
.end method

.method public logout()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 96
    invoke-static {}, Lcom/helpscout/beacon/Beacon;->logout()V

    return-void
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public open()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/helpscout/beacon/ui/BeaconActivity;->open(Landroid/content/Context;)V

    return-void
.end method

.method public openArticle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->ARTICLE_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-static {p1, v1, v0}, Lcom/helpscout/beacon/ui/BeaconActivity;->open(Landroid/content/Context;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V

    return-void
.end method

.method public previousMessages()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->PREVIOUS_MESSAGES:Lcom/helpscout/beacon/model/BeaconScreens;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/ui/BeaconActivity;->open(Landroid/content/Context;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v1, Lcom/helpscout/beacon/model/BeaconScreens;->SEARCH_SCREEN:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-static {p1, v1, v0}, Lcom/helpscout/beacon/ui/BeaconActivity;->open(Landroid/content/Context;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V

    return-void
.end method
