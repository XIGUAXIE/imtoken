.class public interface abstract Lcom/helpscout/beacon/BeaconDatastore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010%\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J!\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J-\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001c\u0010\u0004R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010$\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u0007\"\u0004\u0008\"\u0010#R\u001c\u0010\'\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 R\u0016\u0010+\u001a\u00020(8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u001c\u0010.\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010\u0007\"\u0004\u0008-\u0010#R\u0016\u00102\u001a\u00020/8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u001c\u00105\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00083\u0010\u001e\"\u0004\u00084\u0010 R\u001c\u00108\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00086\u0010\u001e\"\u0004\u00087\u0010 R\u001c\u0010<\u001a\u00020\u000b8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u0010\r\"\u0004\u0008:\u0010;R\"\u0010C\u001a\u0008\u0012\u0004\u0012\u00020>0=8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001c\u0010F\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008D\u0010\u0007\"\u0004\u0008E\u0010#R\u0016\u0010H\u001a\u00020\u00058&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010\u0007R\u001c\u0010K\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008I\u0010\u0007\"\u0004\u0008J\u0010#R\u001c\u0010L\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008L\u0010\u0007\"\u0004\u0008M\u0010#R\u0016\u0010O\u001a\u00020\u00058&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010\u0007R(\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120P8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0016\u0010W\u001a\u00020\u00058&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010\u0007R\u0016\u0010Y\u001a\u00020\u00058&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010\u0007R\u001c\u0010\\\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Z\u0010\u001e\"\u0004\u0008[\u0010 R\u001c\u0010_\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008]\u0010\u0007\"\u0004\u0008^\u0010#R\u001c\u0010e\u001a\u00020`8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008f\u0010\u001e\"\u0004\u0008g\u0010 R\u0016\u0010k\u001a\u00020h8&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u001c\u0010n\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008l\u0010\u0007\"\u0004\u0008m\u0010#R\u001c\u0010t\u001a\u00020o8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u0018\u0010v\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010\u001eR\u001c\u0010\u0013\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008w\u0010\u001e\"\u0004\u0008x\u0010 R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008y\u0010\u001e\"\u0004\u0008z\u0010 R\u001c\u0010}\u001a\u00020o8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008{\u0010q\"\u0004\u0008|\u0010sR\u001d\u0010\u0080\u0001\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008~\u0010\u0007\"\u0004\u0008\u007f\u0010#R \u0010\u0019\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0081\u0001\u0010\u001e\"\u0005\u0008\u0082\u0001\u0010 R\u001f\u0010\u0085\u0001\u001a\u00020\u00128&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0083\u0001\u0010\u001e\"\u0005\u0008\u0084\u0001\u0010 R\u001a\u0010\u0089\u0001\u001a\u00030\u0086\u00018&@&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R&\u0010\u008d\u0001\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010=8&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008b\u0001\u0010@\"\u0005\u0008\u008c\u0001\u0010BR,\u0010\u0091\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u008e\u00018&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008f\u0001\u0010R\"\u0005\u0008\u0090\u0001\u0010TR\u001f\u0010\u0094\u0001\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0092\u0001\u0010\u0007\"\u0005\u0008\u0093\u0001\u0010#\u00a8\u0006\u0095\u0001"
    }
    d2 = {
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "",
        "",
        "setInitialValues",
        "()V",
        "",
        "userHasEmail",
        "()Z",
        "Lcom/helpscout/beacon/model/BeaconUser;",
        "getBeaconUser",
        "()Lcom/helpscout/beacon/model/BeaconUser;",
        "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "getConfigWithOverrides",
        "()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "clear",
        "logout",
        "clearContactFormDraft",
        "clearPrefilledForm",
        "",
        "email",
        "name",
        "login",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "company",
        "jobTitle",
        "avatar",
        "addSpecialAttributes",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "clearSessionAttributes",
        "getJobTitle",
        "()Ljava/lang/String;",
        "setJobTitle",
        "(Ljava/lang/String;)V",
        "getLogsEnabled",
        "setLogsEnabled",
        "(Z)V",
        "logsEnabled",
        "getSignature",
        "setSignature",
        "signature",
        "Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;",
        "getAuthType",
        "()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;",
        "authType",
        "getHasPreviousConversations",
        "setHasPreviousConversations",
        "hasPreviousConversations",
        "Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;",
        "getChatConfig",
        "()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;",
        "chatConfig",
        "getPushToken",
        "setPushToken",
        "pushToken",
        "getAppId",
        "setAppId",
        "appId",
        "getRawConfig",
        "setRawConfig",
        "(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V",
        "rawConfig",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "getAgents",
        "()Ljava/util/List;",
        "setAgents",
        "(Ljava/util/List;)V",
        "agents",
        "getShowPrefilledCustomFields",
        "setShowPrefilledCustomFields",
        "showPrefilledCustomFields",
        "getDocsEnabled",
        "docsEnabled",
        "getOverrideMessagingEnabled",
        "setOverrideMessagingEnabled",
        "overrideMessagingEnabled",
        "isVisitor",
        "setVisitor",
        "getChatEnabled",
        "chatEnabled",
        "",
        "getUserAttributes",
        "()Ljava/util/Map;",
        "setUserAttributes",
        "(Ljava/util/Map;)V",
        "userAttributes",
        "getMessagingEnabled",
        "messagingEnabled",
        "getEnablePreviousMessages",
        "enablePreviousMessages",
        "getBeaconId",
        "setBeaconId",
        "beaconId",
        "getOverrideDocsEnabled",
        "setOverrideDocsEnabled",
        "overrideDocsEnabled",
        "Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "getBeaconConfigOverrides",
        "()Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "setBeaconConfigOverrides",
        "(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V",
        "beaconConfigOverrides",
        "getName",
        "setName",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "getContactFormOptions",
        "()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "contactFormOptions",
        "getPushTokenRegistered",
        "setPushTokenRegistered",
        "pushTokenRegistered",
        "Lcom/helpscout/beacon/model/PreFilledForm;",
        "getContactFormDraft",
        "()Lcom/helpscout/beacon/model/PreFilledForm;",
        "setContactFormDraft",
        "(Lcom/helpscout/beacon/model/PreFilledForm;)V",
        "contactFormDraft",
        "getCompanyName",
        "companyName",
        "getEmail",
        "setEmail",
        "getCompany",
        "setCompany",
        "getPreFilledForm",
        "setPreFilledForm",
        "preFilledForm",
        "getShouldIdentifyCustomer",
        "setShouldIdentifyCustomer",
        "shouldIdentifyCustomer",
        "getAvatar",
        "setAvatar",
        "getInstallId",
        "setInstallId",
        "installId",
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "getDisplayOptions",
        "()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "displayOptions",
        "Lcom/helpscout/beacon/model/SuggestedArticle;",
        "getSuggestionArticles",
        "setSuggestionArticles",
        "suggestionArticles",
        "",
        "getSessionAttributes",
        "setSessionAttributes",
        "sessionAttributes",
        "getOverrideChatEnabled",
        "setOverrideChatEnabled",
        "overrideChatEnabled",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract addSpecialAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearContactFormDraft()V
.end method

.method public abstract clearPrefilledForm()V
.end method

.method public abstract clearSessionAttributes()V
.end method

.method public abstract getAgents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;
.end method

.method public abstract getAvatar()Ljava/lang/String;
.end method

.method public abstract getBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;
.end method

.method public abstract getBeaconId()Ljava/lang/String;
.end method

.method public abstract getBeaconUser()Lcom/helpscout/beacon/model/BeaconUser;
.end method

.method public abstract getChatConfig()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;
.end method

.method public abstract getChatEnabled()Z
.end method

.method public abstract getCompany()Ljava/lang/String;
.end method

.method public abstract getCompanyName()Ljava/lang/String;
.end method

.method public abstract getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
.end method

.method public abstract getContactFormDraft()Lcom/helpscout/beacon/model/PreFilledForm;
.end method

.method public abstract getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;
.end method

.method public abstract getDisplayOptions()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
.end method

.method public abstract getDocsEnabled()Z
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getEnablePreviousMessages()Z
.end method

.method public abstract getHasPreviousConversations()Z
.end method

.method public abstract getInstallId()Ljava/lang/String;
.end method

.method public abstract getJobTitle()Ljava/lang/String;
.end method

.method public abstract getLogsEnabled()Z
.end method

.method public abstract getMessagingEnabled()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOverrideChatEnabled()Z
.end method

.method public abstract getOverrideDocsEnabled()Z
.end method

.method public abstract getOverrideMessagingEnabled()Z
.end method

.method public abstract getPreFilledForm()Lcom/helpscout/beacon/model/PreFilledForm;
.end method

.method public abstract getPushToken()Ljava/lang/String;
.end method

.method public abstract getPushTokenRegistered()Z
.end method

.method public abstract getRawConfig()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
.end method

.method public abstract getSessionAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShouldIdentifyCustomer()Z
.end method

.method public abstract getShowPrefilledCustomFields()Z
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSuggestionArticles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isVisitor()Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract setAgents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAvatar(Ljava/lang/String;)V
.end method

.method public abstract setBeaconConfigOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)V
.end method

.method public abstract setBeaconId(Ljava/lang/String;)V
.end method

.method public abstract setCompany(Ljava/lang/String;)V
.end method

.method public abstract setContactFormDraft(Lcom/helpscout/beacon/model/PreFilledForm;)V
.end method

.method public abstract setEmail(Ljava/lang/String;)V
.end method

.method public abstract setHasPreviousConversations(Z)V
.end method

.method public abstract setInitialValues()V
.end method

.method public abstract setInstallId(Ljava/lang/String;)V
.end method

.method public abstract setJobTitle(Ljava/lang/String;)V
.end method

.method public abstract setLogsEnabled(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOverrideChatEnabled(Z)V
.end method

.method public abstract setOverrideDocsEnabled(Z)V
.end method

.method public abstract setOverrideMessagingEnabled(Z)V
.end method

.method public abstract setPreFilledForm(Lcom/helpscout/beacon/model/PreFilledForm;)V
.end method

.method public abstract setPushToken(Ljava/lang/String;)V
.end method

.method public abstract setPushTokenRegistered(Z)V
.end method

.method public abstract setRawConfig(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V
.end method

.method public abstract setSessionAttributes(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setShouldIdentifyCustomer(Z)V
.end method

.method public abstract setShowPrefilledCustomFields(Z)V
.end method

.method public abstract setSignature(Ljava/lang/String;)V
.end method

.method public abstract setSuggestionArticles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/model/SuggestedArticle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserAttributes(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVisitor(Z)V
.end method

.method public abstract userHasEmail()Z
.end method
