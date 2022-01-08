.class public final Lcom/helpscout/beacon/a/d/d/i/c;
.super Lcom/helpscout/beacon/a/d/d/i/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconColors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNotifications"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/a/d/d/i/a;-><init>(Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/common/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V

    return-void
.end method


# virtual methods
.method public a(ILandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    const-string p1, "builder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    const-string v0, "messageReplyIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "builder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)Z
    .locals 0

    const-string p1, "activeNotification"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notificationBuilder"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sender"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
