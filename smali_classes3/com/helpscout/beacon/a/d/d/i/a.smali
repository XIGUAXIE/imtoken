.class public abstract Lcom/helpscout/beacon/a/d/d/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/i/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/b;

.field private final c:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final d:Lcom/helpscout/beacon/a/d/d/a;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/i/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/i/a;->b:Lcom/helpscout/beacon/internal/presentation/common/b;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/d/i/a;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p4, p0, Lcom/helpscout/beacon/a/d/d/i/a;->d:Lcom/helpscout/beacon/a/d/d/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    const-string v0, "onPressLaunchActivityIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/i/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/i/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/d/d/i/a;->b:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-interface {p2}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_notification:I

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "NotificationCompat.Build\u2026tentIntent(pendingIntent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Landroidx/core/app/Person;
    .locals 3

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/i/a;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->Q0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/i/a;->a:Landroid/content/Context;

    sget v2, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_push_nofication_user:I

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/i/a;->b:Lcom/helpscout/beacon/internal/presentation/common/b;

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->setTint(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    const-string v1, "Person.Builder()\n       \u2026   )\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/i/a;->d:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/a;->a(I)V

    return-void
.end method

.method public a(ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "notificationBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/helpscout/beacon/a/d/d/i/a;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/a/d/d/i/a;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p5, :cond_0

    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0, p5}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p4, v1, v2, p5}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-interface {p0, p6, p2}, Lcom/helpscout/beacon/a/d/d/i/b;->a(Landroid/content/Intent;Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p3, p0, Lcom/helpscout/beacon/a/d/d/i/a;->d:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string p4, "it.build()"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Lcom/helpscout/beacon/a/d/d/a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method protected final b()Lcom/helpscout/beacon/a/d/d/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/i/a;->d:Lcom/helpscout/beacon/a/d/d/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/helpscout/beacon/a/d/d/i/b$a;->b(Lcom/helpscout/beacon/a/d/d/i/b;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected final c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/i/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final d()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/i/a;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method
