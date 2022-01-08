.class public final Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u0008\u0008\u0001\u0010 \u001a\u00020\u000e\u0012\u0008\u0008\u0001\u0010!\u001a\u00020\u000e\u0012\u0008\u0008\u0003\u0010\"\u001a\u00020\u0012\u0012\u0008\u0008\u0003\u0010#\u001a\u00020\u0015\u0012\u0008\u0008\u0003\u0010$\u001a\u00020\u0015\u0012\u0008\u0008\u0003\u0010%\u001a\u00020\u0019\u0012\u0008\u0008\u0003\u0010&\u001a\u00020\u001c\u0012\n\u0008\u0003\u0010\'\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008?\u0010@J\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\n\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0015H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0010\u0010\u001a\u001a\u00020\u0019H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u0010Jb\u0010(\u001a\u00020\u00002\u0008\u0008\u0003\u0010 \u001a\u00020\u000e2\u0008\u0008\u0003\u0010!\u001a\u00020\u000e2\u0008\u0008\u0003\u0010\"\u001a\u00020\u00122\u0008\u0008\u0003\u0010#\u001a\u00020\u00152\u0008\u0008\u0003\u0010$\u001a\u00020\u00152\u0008\u0008\u0003\u0010%\u001a\u00020\u00192\u0008\u0008\u0003\u0010&\u001a\u00020\u001c2\n\u0008\u0003\u0010\'\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010*\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008*\u0010\u0010J\u0010\u0010,\u001a\u00020+H\u00d6\u0001\u00a2\u0006\u0004\u0008,\u0010-J\u001a\u0010/\u001a\u00020\u00152\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008/\u00100R\u001b\u0010\'\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u00101\u001a\u0004\u00082\u0010\u0010R\u0019\u0010$\u001a\u00020\u00158\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u00103\u001a\u0004\u00084\u0010\u0017R\u0019\u0010#\u001a\u00020\u00158\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u00103\u001a\u0004\u00085\u0010\u0017R\u0019\u0010\"\u001a\u00020\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u00106\u001a\u0004\u00087\u0010\u0014R\u0019\u00108\u001a\u00020\u00158\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00103\u001a\u0004\u00088\u0010\u0017R\u0019\u0010 \u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u00101\u001a\u0004\u00089\u0010\u0010R\u0019\u0010!\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u00101\u001a\u0004\u0008:\u0010\u0010R\u0019\u0010%\u001a\u00020\u00198\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010;\u001a\u0004\u0008<\u0010\u001bR\u0019\u0010&\u001a\u00020\u001c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010=\u001a\u0004\u0008>\u0010\u001e\u00a8\u0006A"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "",
        "Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "configOverrides",
        "configFromApi",
        "applyLocalOverrides",
        "(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "contactFormConfigOverrides",
        "contactFormConfigFromApi",
        "applyLocalContactFormOverrides",
        "(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;)Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "withOverrides",
        "(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "component3",
        "()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "",
        "component4",
        "()Z",
        "component5",
        "Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;",
        "component6",
        "()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;",
        "Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;",
        "component7",
        "()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;",
        "component8",
        "id",
        "name",
        "display",
        "docsEnabled",
        "messagingEnabled",
        "messaging",
        "labels",
        "companyName",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getCompanyName",
        "Z",
        "getMessagingEnabled",
        "getDocsEnabled",
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "getDisplay",
        "isValid",
        "getId",
        "getName",
        "Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;",
        "getMessaging",
        "Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;",
        "getLabels",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final companyName:Ljava/lang/String;

.field private final display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

.field private final docsEnabled:Z

.field private final id:Ljava/lang/String;

.field private final isValid:Z

.field private final labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

.field private final messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

.field private final messagingEnabled:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p3    # Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "display"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "docsEnabled"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "messagingEnabled"
        .end annotation
    .end param
    .param p6    # Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "messaging"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "labels"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "companyName"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messaging"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    iput-boolean p4, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    iput-boolean p5, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    iput-object p6, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    const-string p2, "-1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getDefaultDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->access$getInvalidMessagingConfig$p()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->access$getInvalidLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const-string v0, ""

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)V

    return-void
.end method

.method private final applyLocalContactFormOverrides(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;)Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result v0

    :goto_0
    move v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result v0

    :goto_1
    move v3, v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowGetInTouch()Z

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowGetInTouch()Z

    move-result v0

    :goto_2
    move v6, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v0

    :goto_3
    move v4, v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getCustomFieldsEnabled()Z

    move-result p1

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getCustomFieldsEnabled()Z

    move-result p1

    :goto_4
    move v5, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->copy(ZZZZZ)Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object p1

    return-object p1
.end method

.method private final applyLocalOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 21

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getMessagingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    :goto_0
    move v5, v1

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getDocsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    :goto_1
    move v4, v1

    new-instance v3, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getColor()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getShowPoweredBy()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getFocusMode()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-virtual {v6}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->getFocusMode()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    sget-object v6, Lcom/helpscout/beacon/model/FocusMode;->NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

    :goto_4
    invoke-direct {v3, v1, v2, v6}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;-><init>(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)V

    new-instance v6, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getExpectedResponseTime()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getAuthType()Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getChatEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_5
    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChatEnabled()Z

    move-result v1

    :goto_5
    move v10, v1

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;->getContactForm()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v1

    iget-object v2, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getContactForm()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v2

    move-object/from16 v13, p0

    invoke-direct {v13, v1, v2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->applyLocalContactFormOverrides(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;)Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v12

    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChat()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    new-instance v1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    move-object v11, v1

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;ZLcom/helpscout/beacon/internal/core/model/ChatConfigApi;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc3

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v10}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->copy$default(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    return v0
.end method

.method public final component6()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    return-object v0
.end method

.method public final component7()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "name"
        .end annotation
    .end param
    .param p3    # Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "display"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "docsEnabled"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "messagingEnabled"
        .end annotation
    .end param
    .param p6    # Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "messaging"
        .end annotation
    .end param
    .param p7    # Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "labels"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "companyName"
        .end annotation
    .end param

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messaging"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-object v1, v0

    move v5, p4

    move v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    return-object v0
.end method

.method public final getDocsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    return-object v0
.end method

.method public final getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    return-object v0
.end method

.method public final getMessagingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconConfigApi(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->display:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", docsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->docsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", messagingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messagingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", messaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->messaging:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", labels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->labels:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", companyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 1

    const-string v0, "configOverrides"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p0}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->applyLocalOverrides(Lcom/helpscout/beacon/model/BeaconConfigOverrides;Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p1

    return-object p1
.end method
