.class public final Lcom/helpscout/beacon/model/ModelsKt;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\r\u0010\u0001\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u001a\u0015\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\"\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "emptyBeaconConfigOverrides",
        "()Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "",
        "overrideColor",
        "colorOnlyBeaconConfigOverrides",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/model/BeaconConfigOverrides;",
        "Lcom/helpscout/beacon/model/PreFilledForm;",
        "EMPTY_PREFILLED_FORM",
        "Lcom/helpscout/beacon/model/PreFilledForm;",
        "getEMPTY_PREFILLED_FORM",
        "()Lcom/helpscout/beacon/model/PreFilledForm;",
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
.field private static final EMPTY_PREFILLED_FORM:Lcom/helpscout/beacon/model/PreFilledForm;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lcom/helpscout/beacon/model/PreFilledForm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/helpscout/beacon/model/PreFilledForm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lcom/helpscout/beacon/model/ModelsKt;->EMPTY_PREFILLED_FORM:Lcom/helpscout/beacon/model/PreFilledForm;

    return-void
.end method

.method public static final colorOnlyBeaconConfigOverrides(Ljava/lang/String;)Lcom/helpscout/beacon/model/BeaconConfigOverrides;
    .locals 11

    const-string v0, "overrideColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v10}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Lcom/helpscout/beacon/model/FocusMode;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final emptyBeaconConfigOverrides()Lcom/helpscout/beacon/model/BeaconConfigOverrides;
    .locals 11

    new-instance v10, Lcom/helpscout/beacon/model/BeaconConfigOverrides;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/model/BeaconConfigOverrides;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Lcom/helpscout/beacon/model/FocusMode;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public static final getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/model/ModelsKt;->EMPTY_PREFILLED_FORM:Lcom/helpscout/beacon/model/PreFilledForm;

    return-object v0
.end method
