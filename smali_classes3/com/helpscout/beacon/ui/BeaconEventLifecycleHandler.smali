.class public final Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 !2\u00020\u0001:\u0001!B\u001b\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u000eR\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "",
        "beaconOpened",
        "()V",
        "beaconClosed",
        "Landroid/app/Activity;",
        "activity",
        "",
        "isBeaconActivity",
        "(Landroid/app/Activity;)Z",
        "Landroid/os/Bundle;",
        "bundle",
        "onActivityCreated",
        "(Landroid/app/Activity;Landroid/os/Bundle;)V",
        "onActivityDestroyed",
        "(Landroid/app/Activity;)V",
        "onActivityStarted",
        "onActivityResumed",
        "onActivityPaused",
        "onActivityStopped",
        "onActivitySaveInstanceState",
        "",
        "created",
        "I",
        "Lcom/helpscout/beacon/ui/BeaconOnClosedListener;",
        "onClosedListener",
        "Lcom/helpscout/beacon/ui/BeaconOnClosedListener;",
        "Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;",
        "onOpenedListener",
        "Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;",
        "<init>",
        "(Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;Lcom/helpscout/beacon/ui/BeaconOnClosedListener;)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler$Companion;

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.helpscout.beacon.internal"

.field private static final UI_PACKAGE:Ljava/lang/String; = "com.helpscout.beacon.ui"


# instance fields
.field private created:I

.field private final onClosedListener:Lcom/helpscout/beacon/ui/BeaconOnClosedListener;

.field private final onOpenedListener:Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->Companion:Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;Lcom/helpscout/beacon/ui/BeaconOnClosedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->onOpenedListener:Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;

    iput-object p2, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->onClosedListener:Lcom/helpscout/beacon/ui/BeaconOnClosedListener;

    return-void
.end method

.method private final beaconClosed()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->onClosedListener:Lcom/helpscout/beacon/ui/BeaconOnClosedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/helpscout/beacon/ui/BeaconOnClosedListener;->onClosed()V

    :cond_0
    return-void
.end method

.method private final beaconOpened()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->onOpenedListener:Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;->onOpened()V

    :cond_0
    return-void
.end method

.method private final isBeaconActivity(Landroid/app/Activity;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.localClassName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "com.helpscout.beacon.ui"

    invoke-static {v0, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.helpscout.beacon.internal"

    invoke-static {p1, v0, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->isBeaconActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->beaconOpened()V

    :cond_0
    iget p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->isBeaconActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->beaconClosed()V

    :cond_0
    iget p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/helpscout/beacon/ui/BeaconEventLifecycleHandler;->created:I

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
