.class public final Lcom/helpscout/beacon/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/a/c/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 2

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Dropping current Beacon config"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidBeacon()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/BeaconDatastore;->setRawConfig(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    return-void
.end method
