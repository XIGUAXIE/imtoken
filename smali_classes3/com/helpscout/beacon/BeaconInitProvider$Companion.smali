.class public final Lcom/helpscout/beacon/BeaconInitProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/BeaconInitProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/helpscout/beacon/BeaconInitProvider$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "initDataStore",
        "(Landroid/content/Context;)Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore",
        "()Lcom/helpscout/beacon/BeaconDatastore;",
        "",
        "AUTO_INIT_DISABLE_DEFAULT",
        "Z",
        "",
        "AUTO_INIT_META_DATA_KEY",
        "Ljava/lang/String;",
        "BEACON_PREFS_FILENAME",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/BeaconInitProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final datastore()Lcom/helpscout/beacon/BeaconDatastore;
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->b()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    const-string v1, "Beacon.datastore()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final initDataStore(Landroid/content/Context;)Lcom/helpscout/beacon/BeaconDatastore;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.helpscout.beacon.prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Lcom/helpscout/beacon/a/a/c/a;

    const-string v1, "prefs"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/helpscout/beacon/a/a/c/a;-><init>(Landroid/content/SharedPreferences;Lcom/helpscout/beacon/a/a/c/f;Lcom/helpscout/beacon/a/a/c/h;Lcom/helpscout/beacon/a/a/c/d;Lcom/helpscout/beacon/a/a/a;Lcom/helpscout/beacon/a/b/c/b/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.packageName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/a/c/a;->setAppId(Ljava/lang/String;)V

    return-object v0
.end method
