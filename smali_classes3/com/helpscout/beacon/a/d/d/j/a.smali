.class public final Lcom/helpscout/beacon/a/d/d/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/helpscout/beacon/BeaconDatastore;

.field private final c:Lcom/helpscout/beacon/a/d/d/i/b;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final e:Lcom/helpscout/beacon/a/d/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/d/d/i/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNotifications"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/j/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    iput-object p4, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p5, p0, Lcom/helpscout/beacon/a/d/d/j/a;->e:Lcom/helpscout/beacon/a/d/d/a;

    return-void
.end method

.method private final a(I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    const-class v2, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.helpscout.beacon.ui.ACTION_CHAT_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private final a()Landroidx/core/app/NotificationCompat$Builder;
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;Landroid/content/Context;ZILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->K0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/helpscout/beacon/a/d/d/i/b;->a(Landroid/content/Intent;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->I0()Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/helpscout/beacon/a/d/d/i/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object p1

    return-object p1
.end method

.method private final a(ILcom/helpscout/beacon/a/d/d/b$c;)V
    .locals 9

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/d/b$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/d/b$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object v7

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/j/a;->a()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/d/b$c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->H0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/d/b$c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(I)Landroid/content/Intent;

    move-result-object v8

    move v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Landroid/app/Notification;ILcom/helpscout/beacon/a/d/d/b$c;)V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/j/a;->a()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/d/d/b$c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/d/d/b$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/d/d/b$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/j/a;->a(I)Landroid/content/Intent;

    move-result-object v7

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/helpscout/beacon/a/d/d/j/a;->a(ILcom/helpscout/beacon/a/d/d/b$c;)V

    :cond_0
    return-void
.end method

.method private final b(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 11

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->e:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/a;->b(I)Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/j/a;->a()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/d/d/i/b;->a()Landroidx/core/app/Person;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v10}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/helpscout/beacon/a/d/d/b$a;)V
    .locals 6

    const-string v0, "chatEndedNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/a;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->e:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/d/d/a;->b(I)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    iget-object v3, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    iget-object v3, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/helpscout/beacon/a/d/d/j/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/helpscout/beacon/a/d/d/j/a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/j/a;->a()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v4}, Lcom/helpscout/beacon/internal/presentation/common/d;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->e:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "it.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/helpscout/beacon/a/d/d/a;->a(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/helpscout/beacon/a/d/d/b$b;)V
    .locals 10

    const-string v0, "inactivityNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/j/a;->a()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$b;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/a/d/d/b$c;)V
    .locals 2

    const-string v0, "chatReplyNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/a;->b(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/a;->e:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/d/d/a;->b(I)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(ILcom/helpscout/beacon/a/d/d/b$c;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Landroid/app/Notification;ILcom/helpscout/beacon/a/d/d/b$c;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/a;->c:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->b(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/d/d/i/b;->a(I)V

    return-void
.end method
