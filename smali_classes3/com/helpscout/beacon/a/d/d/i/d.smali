.class public final Lcom/helpscout/beacon/a/d/d/i/d;
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

.method private final a(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 2

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "MessagingStyle.extractMe\u2026ification) ?: return null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->a()Landroidx/core/app/Person;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p1

    const-string v1, "currentMessages"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/a/d/d/i/d;->a(Ljava/util/List;Landroidx/core/app/NotificationCompat$MessagingStyle;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Ljava/util/List;Landroidx/core/app/NotificationCompat$MessagingStyle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;",
            "Landroidx/core/app/NotificationCompat$MessagingStyle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a(ILandroidx/core/app/NotificationCompat$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/helpscout/beacon/internal/presentation/push/receiver/MarkAsReadReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->c()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->d()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->F0()Ljava/lang/String;

    move-result-object v1

    const v2, 0x108005a

    invoke-direct {v0, v2, v1, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public a(Landroid/content/Intent;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5

    const-string v0, "messageReplyIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->d()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->G0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/core/app/RemoteInput$Builder;

    const-string v2, "com.helpscout.beacon.ui.NOTIFICATION_KEY_REPLY"

    invoke-direct {v1, v2}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v1

    const-string v2, "RemoteInput.Builder(Conv\u2026bel)\n            .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v3, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_notif_action_reply:I

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public a(ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "activeNotification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/helpscout/beacon/a/d/d/i/a;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p0, p4}, Lcom/helpscout/beacon/a/d/d/i/a;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/i/d;->a(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p4, :cond_0

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p5, v1, v2, p6}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    if-eqz p7, :cond_1

    invoke-virtual {p0, p7, p3}, Lcom/helpscout/beacon/a/d/d/i/d;->a(Landroid/content/Intent;Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/helpscout/beacon/a/d/d/i/d;->a(ILandroidx/core/app/NotificationCompat$Builder;)V

    if-eqz p4, :cond_2

    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/a/d/d/i/a;->b()Lcom/helpscout/beacon/a/d/d/a;

    move-result-object p4

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    const-string p5, "notificationBuilder.build()"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p3}, Lcom/helpscout/beacon/a/d/d/a;->a(ILandroid/app/Notification;)V

    return p2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
