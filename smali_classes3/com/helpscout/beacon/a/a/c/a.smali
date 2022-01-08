.class public final Lcom/helpscout/beacon/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/BeaconDatastore;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/helpscout/beacon/a/a/c/f;

.field private final c:Lcom/helpscout/beacon/a/a/c/h;

.field private final d:Lcom/helpscout/beacon/a/a/c/d;

.field private final e:Lcom/helpscout/beacon/a/a/a;

.field private final f:Lcom/helpscout/beacon/a/b/c/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/helpscout/beacon/a/a/c/f;Lcom/helpscout/beacon/a/a/c/h;Lcom/helpscout/beacon/a/a/c/d;Lcom/helpscout/beacon/a/a/a;Lcom/helpscout/beacon/a/b/c/b/i;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionAttributeMapCleaner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSpecialAttributesValidator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkUpgradeCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidIdGenerator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/helpscout/beacon/a/a/c/a;->b:Lcom/helpscout/beacon/a/a/c/f;

    iput-object p3, p0, Lcom/helpscout/beacon/a/a/c/a;->c:Lcom/helpscout/beacon/a/a/c/h;

    iput-object p4, p0, Lcom/helpscout/beacon/a/a/c/a;->d:Lcom/helpscout/beacon/a/a/c/d;

    iput-object p5, p0, Lcom/helpscout/beacon/a/a/c/a;->e:Lcom/helpscout/beacon/a/a/a;

    iput-object p6, p0, Lcom/helpscout/beacon/a/a/c/a;->f:Lcom/helpscout/beacon/a/b/c/b/i;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->setInitialValues()V

    invoke-direct {p0}, Lcom/helpscout/beacon/a/a/c/a;->c()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/helpscout/beacon/a/a/c/f;Lcom/helpscout/beacon/a/a/c/h;Lcom/helpscout/beacon/a/a/c/d;Lcom/helpscout/beacon/a/a/a;Lcom/helpscout/beacon/a/b/c/b/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    new-instance p2, Lcom/helpscout/beacon/a/a/c/f;

    invoke-direct {p2}, Lcom/helpscout/beacon/a/a/c/f;-><init>()V

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    new-instance p3, Lcom/helpscout/beacon/a/a/c/h;

    sget-object p2, Lcom/helpscout/beacon/a/a/c/g;->a:Lcom/helpscout/beacon/a/a/c/g;

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/a/c/g;->a()Lcom/helpscout/common/validator/UrlValidator;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/helpscout/beacon/a/a/c/h;-><init>(Lcom/helpscout/common/validator/UrlValidator;)V

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    new-instance p4, Lcom/helpscout/beacon/a/a/c/b;

    invoke-direct {p4}, Lcom/helpscout/beacon/a/a/c/b;-><init>()V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    sget-object p5, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    :cond_3
    move-object v5, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    new-instance p6, Lcom/helpscout/beacon/a/b/c/b/i;

    invoke-direct {p6}, Lcom/helpscout/beacon/a/b/c/b/i;-><init>()V

    :cond_4
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/a/a/c/a;-><init>(Landroid/content/SharedPreferences;Lcom/helpscout/beacon/a/a/c/f;Lcom/helpscout/beacon/a/a/c/h;Lcom/helpscout/beacon/a/a/c/d;Lcom/helpscout/beacon/a/a/a;Lcom/helpscout/beacon/a/b/c/b/i;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/a/c/a;)Lcom/helpscout/beacon/a/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/a/a/c/a;->d:Lcom/helpscout/beacon/a/a/c/d;

    return-object p0
.end method

.method private final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setShouldIdentifyCustomer(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.helpscout.beacon.SDK_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/helpscout/beacon/a/a/c/a;->a()V

    return-void
.end method

.method private final b()Lcom/helpscout/beacon/internal/core/model/SdkVersion;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->Companion:Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;->getDEFAULT()Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.helpscout.beacon.SDK_VERSION"

    invoke-static {v0, v2, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    invoke-direct {v1, v0}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private final c()V
    .locals 4

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    const-string v1, "3.0.2"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/helpscout/beacon/a/a/c/e;->a:Lcom/helpscout/beacon/a/a/c/e;

    invoke-direct {p0}, Lcom/helpscout/beacon/a/a/c/a;->b()Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    move-result-object v2

    new-instance v3, Lcom/helpscout/beacon/a/a/c/a$a;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/a/a/c/a$a;-><init>(Lcom/helpscout/beacon/a/a/c/a;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/helpscout/beacon/a/a/c/e;->a(Lcom/helpscout/beacon/internal/core/model/SdkVersion;Lcom/helpscout/beacon/internal/core/model/SdkVersion;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->a(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)V

    return-void
.end method

.method private final d()V
    .locals 1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setAgents(Ljava/util/List;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidBeacon()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setRawConfig(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    return-void
.end method


# virtual methods
.method public addSpecialAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->c:Lcom/helpscout/beacon/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpscout/beacon/a/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/core/model/SpecialUserAttributesCheckResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/SpecialUserAttributesCheckResult;->getValidCompany()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/a/c/a;->setCompany(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/SpecialUserAttributesCheckResult;->getValidJobTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/a/c/a;->setJobTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/SpecialUserAttributesCheckResult;->getValidAvatarURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->setInitialValues()V

    return-void
.end method

.method public clearContactFormDraft()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setContactFormDraft(Lcom/helpscout/beacon/model/PreFilledForm;)V

    return-void
.end method

.method public clearPrefilledForm()V
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V

    return-void
.end method

.method public clearSessionAttributes()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setSessionAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public getAgents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.AGENTS"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3, v2}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.APP_ID"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    move-result-object v0

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.AVATAR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.CONFIG_OVERRIDES"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->emptyBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v3, Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    return-object v1
.end method

.method public getBeaconId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.BEACON_ID"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeaconUser()Lcom/helpscout/beacon/model/BeaconUser;
    .locals 8

    new-instance v7, Lcom/helpscout/beacon/model/BeaconUser;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getCompany()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getJobTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getUserAttributes()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/model/BeaconUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v7
.end method

.method public getChatConfig()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChat()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public getChatEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChatEnabled()Z

    move-result v0

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.COMPANY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getRawConfig()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getRawConfig()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->withOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public getContactFormDraft()Lcom/helpscout/beacon/model/PreFilledForm;
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.SAVED_CONTACT_FORM_DRAFT"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v3, Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/helpscout/beacon/model/PreFilledForm;

    return-object v1
.end method

.method public getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getContactForm()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public getDocsEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDocsEnabled()Z

    move-result v0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.EMAIL"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnablePreviousMessages()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getEnablePreviousMessages()Z

    move-result v0

    return v0
.end method

.method public getHasPreviousConversations()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.HAS_PREVIOUS_CONVERSATIONS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.INSTALL_ID"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.JOB_TITLE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.LOGS_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMessagingEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessagingEnabled()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideChatEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getChatEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getOverrideDocsEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getDocsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getOverrideMessagingEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getMessagingEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getPreFilledForm()Lcom/helpscout/beacon/model/PreFilledForm;
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.PREFILL_FORM"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v3, Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/helpscout/beacon/model/PreFilledForm;

    return-object v1
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.PUSH_TOKEN"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushTokenRegistered()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.PUSH_TOKEN_REGISTERED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRawConfig()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.CONFIG"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidBeacon()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v3, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    return-object v1
.end method

.method public getSessionAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.SESSION_ATTRIBUTES"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/Map;

    invoke-virtual {v1, v3, v2}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShouldIdentifyCustomer()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.SHOULD_IDENTIFY_CUSTOMER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowPrefilledCustomFields()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.SHOW_PREFILLED_CUSTOM_FIELDS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.SIGNATURE"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionArticles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.ARTICLE_SUGGESTION_WITH_LINK_SUPPORT_OVERRIDES"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/helpscout/beacon/model/SuggestedArticle;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3, v2}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getUserAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.USER_ATTRIBUTES"

    invoke-static {v0, v1}, Lcom/helpscout/beacon/a/a/d/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/Map;

    invoke-virtual {v1, v3, v2}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isVisitor()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.helpscout.beacon.IS_VISITOR"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setVisitor(Z)V

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/a/c/a;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getEmail()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The signature associated with the previous Email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has been removed"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/a/c/a;->setSignature(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public logout()V
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setEmail(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setSignature(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setCompany(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setJobTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setAvatar(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setUserAttributes(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->clearSessionAttributes()V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setPushToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setPushTokenRegistered(Z)V

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/a/a/c/a;->setPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/a/a/c/a;->setContactFormDraft(Lcom/helpscout/beacon/model/PreFilledForm;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/a/a/c/a;->setVisitor(Z)V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setInstallId(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/a/a/c/a;->setHasPreviousConversations(Z)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->setInitialValues()V

    return-void
.end method

.method public setAgents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.AGENTS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.APP_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.helpscout.beacon.AVATAR"

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.CONFIG_OVERRIDES"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBeaconId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.helpscout.beacon.BEACON_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/a/a/c/a;->d()V

    :cond_0
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.helpscout.beacon.COMPANY"

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContactFormDraft(Lcom/helpscout/beacon/model/PreFilledForm;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.SAVED_CONTACT_FORM_DRAFT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "com.helpscout.beacon.EMAIL"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Email is empty/blank so removing"

    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Email: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " *not* saved as was invalid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setHasPreviousConversations(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.HAS_PREVIOUS_CONVERSATIONS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInitialValues()V
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getInstallId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->f:Lcom/helpscout/beacon/a/b/c/b/i;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/b/c/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/a/c/a;->setInstallId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setInstallId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.INSTALL_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setJobTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.helpscout.beacon.JOB_TITLE"

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.LOGS_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.helpscout.beacon.NAME"

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOverrideChatEnabled(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7b

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->copy$default(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Lcom/helpscout/beacon/model/FocusMode;ZILjava/lang/Object;)Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V

    return-void
.end method

.method public setOverrideDocsEnabled(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->copy$default(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Lcom/helpscout/beacon/model/FocusMode;ZILjava/lang/Object;)Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V

    return-void
.end method

.method public setOverrideMessagingEnabled(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7d

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->copy$default(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Lcom/helpscout/beacon/model/FocusMode;ZILjava/lang/Object;)Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V

    return-void
.end method

.method public setPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.PREFILL_FORM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.PUSH_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushTokenRegistered(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.PUSH_TOKEN_REGISTERED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRawConfig(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const-class v1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/a/a/c/c;->b(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.CONFIG"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSessionAttributes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->b:Lcom/helpscout/beacon/a/a/c/f;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/f;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.SESSION_ATTRIBUTES"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShouldIdentifyCustomer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.SHOULD_IDENTIFY_CUSTOMER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShowPrefilledCustomFields(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.SHOW_PREFILLED_CUSTOM_FIELDS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.SIGNATURE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSuggestionArticles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/helpscout/beacon/model/SuggestedArticle;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.ARTICLE_SUGGESTION_WITH_LINK_SUPPORT_OVERRIDES"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserAttributes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/a/c/c;->c:Lcom/helpscout/beacon/a/a/c/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v2, v1}, Lcom/helpscout/beacon/a/a/c/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/c/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/c$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.helpscout.beacon.USER_ATTRIBUTES"

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVisitor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/a/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.helpscout.beacon.IS_VISITOR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public userHasEmail()Z
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/a/c/a;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
