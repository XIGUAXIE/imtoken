.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt;
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a/\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\"\u001c\u0010\u0011\u001a\u00020\u00108\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroid/content/Context;",
        "context",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "beaconColors",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Lcom/helpscout/beacon/a/d/d/a;",
        "androidNotifications",
        "Lcom/helpscout/beacon/a/d/d/i/b;",
        "createBeaconNotificationHelper",
        "(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)Lcom/helpscout/beacon/a/d/d/i/b;",
        "Landroid/app/NotificationManager;",
        "notificationManager",
        "Lcom/helpscout/beacon/a/d/d/e;",
        "createNotificationChannelCreator",
        "(Landroid/app/NotificationManager;Lcom/helpscout/beacon/internal/presentation/common/d;)Lcom/helpscout/beacon/a/d/d/e;",
        "Lorg/koin/core/module/Module;",
        "pushModule",
        "Lorg/koin/core/module/Module;",
        "getPushModule",
        "()Lorg/koin/core/module/Module;",
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
.field private static final pushModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt$pushModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v1, v0, v2, v3}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt;->pushModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final createBeaconNotificationHelper(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)Lcom/helpscout/beacon/a/d/d/i/b;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNotifications"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/helpscout/beacon/a/d/d/i/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/helpscout/beacon/a/d/d/i/d;-><init>(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/d/d/i/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/helpscout/beacon/a/d/d/i/c;-><init>(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V

    :goto_0
    return-object v0
.end method

.method public static final createNotificationChannelCreator(Landroid/app/NotificationManager;Lcom/helpscout/beacon/internal/presentation/common/d;)Lcom/helpscout/beacon/a/d/d/e;
    .locals 2

    const-string v0, "notificationManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/helpscout/beacon/a/d/d/g;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/d/d/g;-><init>(Landroid/app/NotificationManager;Lcom/helpscout/beacon/internal/presentation/common/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/d/d/d;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/d/d;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static final getPushModule()Lorg/koin/core/module/Module;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt;->pushModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
