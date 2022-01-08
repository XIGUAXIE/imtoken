.class public final Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\"\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0019\u0010\t\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\"\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;",
        "getInvalidLabels",
        "()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;",
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "defaultDisplay",
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "getDefaultDisplay",
        "()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "invalidBeacon",
        "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "getInvalidBeacon",
        "()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
        "",
        "INVALID_BEACON_ID",
        "Ljava/lang/String;",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "invalidContactFormConfig",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "getInvalidContactFormConfig",
        "()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;",
        "invalidMessagingConfig",
        "Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final INVALID_BEACON_ID:Ljava/lang/String; = "-1"

.field private static final defaultDisplay:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

.field private static final invalidBeacon:Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

.field private static final invalidContactFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

.field private static final invalidMessagingConfig:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v3, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    sget-object v0, Lcom/helpscout/beacon/model/FocusMode;->NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

    const-string v1, "#617dec"

    const/4 v2, 0x1

    invoke-direct {v3, v1, v2, v0}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;-><init>(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)V

    sput-object v3, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->defaultDisplay:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;-><init>(ZZZZZ)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidContactFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    new-instance v10, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    sget-object v6, Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;->basic:Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;

    new-instance v8, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "-1"

    move-object v4, v10

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/BeaconAuthType;ZLcom/helpscout/beacon/internal/core/model/ChatConfigApi;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;)V

    sput-object v10, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidMessagingConfig:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    new-instance v11, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    const-string v1, "-1"

    const-string v2, "invalid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/16 v9, 0x40

    const/4 v12, 0x0

    move-object v0, v11

    move-object v6, v10

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;ZZLcom/helpscout/beacon/internal/core/model/MessagingConfigApi;Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidBeacon:Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    return-void
.end method

.method public static final synthetic access$getInvalidLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInvalidMessagingConfig$p()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidMessagingConfig:Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    return-object v0
.end method

.method public static final getDefaultDisplay()Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->defaultDisplay:Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    return-object v0
.end method

.method public static final getInvalidBeacon()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidBeacon:Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    return-object v0
.end method

.method public static final getInvalidContactFormConfig()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->invalidContactFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    return-object v0
.end method

.method private static final getInvalidLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;
    .locals 97

    new-instance v96, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-object/from16 v0, v96

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, -0x1

    const/16 v93, -0x1

    const v94, 0x7ffffff

    const/16 v95, 0x0

    invoke-direct/range {v0 .. v95}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v96
.end method
