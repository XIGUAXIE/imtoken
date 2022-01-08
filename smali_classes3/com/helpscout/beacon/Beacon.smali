.class public Lcom/helpscout/beacon/Beacon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/Beacon$Builder;
    }
.end annotation


# static fields
.field public static final ARTICLE_SUGGESTION_LIMIT:I = 0x5

.field private static a:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method private constructor <init>(Lcom/helpscout/beacon/Beacon$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/helpscout/beacon/Beacon$Builder;->a(Lcom/helpscout/beacon/Beacon$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/Beacon;->a(Lcom/helpscout/beacon/Beacon$Builder;)V

    return-void

    :cond_0
    new-instance p1, Lcom/helpscout/beacon/SDKInitException;

    const-string v0, "A Beacon ID is required to initialize the library"

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/helpscout/beacon/Beacon$Builder;Lcom/helpscout/beacon/Beacon$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/Beacon;-><init>(Lcom/helpscout/beacon/Beacon$Builder;)V

    return-void
.end method

.method static synthetic a()Lcom/helpscout/beacon/BeaconDatastore;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/Beacon;->a:Lcom/helpscout/beacon/BeaconDatastore;

    return-object v0
.end method

.method private a(Lcom/helpscout/beacon/Beacon$Builder;)V
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-static {p1}, Lcom/helpscout/beacon/Beacon$Builder;->a(Lcom/helpscout/beacon/Beacon$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/BeaconDatastore;->setBeaconId(Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-static {p1}, Lcom/helpscout/beacon/Beacon$Builder;->b(Lcom/helpscout/beacon/Beacon$Builder;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setLogsEnabled(Z)V

    return-void
.end method

.method protected static a(Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 0

    sput-object p0, Lcom/helpscout/beacon/Beacon;->a:Lcom/helpscout/beacon/BeaconDatastore;

    return-void
.end method

.method public static addAttributeWithKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setUserAttributes(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V

    return-void
.end method

.method public static authType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    move-result-object v0

    return-object v0
.end method

.method protected static b()Lcom/helpscout/beacon/BeaconDatastore;
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/Beacon;->a:Lcom/helpscout/beacon/BeaconDatastore;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/SDKInitException;

    const-string v1, "Beacon not initialized. If you have disabled auto initialization via manifest meta data, ensure Beacon is manually init using Beacon.Builder().withContext(context)"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static beaconId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/SDKInitException;

    const-string v1, "Beacon Id must be set"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static chatEnabled()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getChatEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static clear()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clear()V

    return-void
.end method

.method public static clearAttributes()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setUserAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public static contactFormReset()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clearContactFormDraft()V

    return-void
.end method

.method public static docsEnabled()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getDocsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static email()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/SDKInitException;

    const-string v1, "user Id (email) must be set, call Beacon.login()"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSessionAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getSessionAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static identify(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/helpscout/beacon/Beacon;->identify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static identify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/helpscout/beacon/SDKInitException;

    const-string p1, "Login called with null or empty email. Call logout instead!"

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/helpscout/beacon/SDKInitException;

    const-string p1, "Beacon must be initialised, use Beacon.Builder()"

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static identify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->login(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Lcom/helpscout/beacon/BeaconDatastore;->addSpecialAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/helpscout/beacon/SDKInitException;

    const-string p1, "identify() called with null or empty email. Call logout instead!"

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/helpscout/beacon/SDKInitException;

    const-string p1, "Beacon must be initialised, use Beacon.Builder()"

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static login(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/helpscout/beacon/Beacon;->identify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/helpscout/beacon/Beacon;->identify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logout()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->logout()V

    return-void
.end method

.method public static logsEnabled()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getLogsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static messagingEnabled()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getMessagingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static prefilledFormReset()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->clearPrefilledForm()V

    return-void
.end method

.method public static previousMessagesEnabled()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static removeAttribute(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setUserAttributes(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static resetSuggestedArticlesOverrides()V
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/BeaconDatastore;->setSuggestionArticles(Ljava/util/List;)V

    return-void
.end method

.method public static setConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V

    return-void
.end method

.method public static setFirebaseCloudMessagingToken(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/BeaconDatastore;->setPushTokenRegistered(Z)V

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setPushToken(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/helpscout/beacon/SDKInitException;

    const-string v0, "Firebase Token can\'t be null or empty"

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOverrideChatEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setOverrideChatEnabled(Z)V

    return-void
.end method

.method public static setOverrideDocsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setOverrideDocsEnabled(Z)V

    return-void
.end method

.method public static setOverrideMessagingEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setOverrideMessagingEnabled(Z)V

    return-void
.end method

.method public static setOverrideSuggestedArticles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;

    invoke-direct {v2, v1}, Lcom/helpscout/beacon/model/SuggestedArticle$SuggestedArticleWithId;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setSuggestionArticles(Ljava/util/List;)V

    return-void
.end method

.method public static setOverrideSuggestedArticlesOrLinks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setSuggestionArticles(Ljava/util/List;)V

    return-void
.end method

.method public static setSessionAttributes(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setSessionAttributes(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static showPrefilledCustomFields(Z)V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/helpscout/beacon/BeaconDatastore;->setShowPrefilledCustomFields(Z)V

    return-void
.end method

.method public static signature()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userHasEmail()Z
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.2"

    return-object v0
.end method
