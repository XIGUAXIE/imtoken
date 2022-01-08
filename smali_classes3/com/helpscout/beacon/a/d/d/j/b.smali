.class public final Lcom/helpscout/beacon/a/d/d/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/helpscout/beacon/a/d/d/i/b;

.field private final c:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final d:Lcom/helpscout/beacon/a/d/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/helpscout/beacon/a/d/d/i/b;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/d/d/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNotifications"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/d/j/b;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p4, p0, Lcom/helpscout/beacon/a/d/d/j/b;->d:Lcom/helpscout/beacon/a/d/d/a;

    return-void
.end method

.method private final a(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->a:Landroid/content/Context;

    const-class v2, Lcom/helpscout/beacon/internal/presentation/push/receiver/ConversationNotificationReplyReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.helpscout.beacon.ui.ACTION_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.helpscout.beacon.ui.EXTRA_CONVERSATION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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
    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->M0()Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/helpscout/beacon/a/d/d/i/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getTitle()Ljava/lang/String;

    move-result-object p1

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
    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->N0()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final a(ILcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V
    .locals 8

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/b;->b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getAgentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getAgentPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object v6

    move v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Landroid/app/Notification;ILcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V
    .locals 9

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/b;->b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v0}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getAgentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getAgentPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/Person;

    move-result-object v7

    move v2, p2

    move-object v3, p1

    invoke-interface/range {v1 .. v8}, Lcom/helpscout/beacon/a/d/d/i/b;->a(ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V

    :cond_0
    return-void
.end method

.method private final b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/j/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/helpscout/beacon/a/d/d/i/b;->a(Landroid/content/Intent;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method private final c(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "conversationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/b;->d:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/a;->b(I)Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/j/b;->b(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/d/d/i/b;->a()Landroidx/core/app/Person;

    move-result-object v7

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v10}, Lcom/helpscout/beacon/a/d/d/i/b$a;->a(Lcom/helpscout/beacon/a/d/d/i/b;ILandroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/Person;Landroid/content/Intent;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/j/b;->b:Lcom/helpscout/beacon/a/d/d/i/b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/j/b;->c(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/d/d/i/b;->a(I)V

    return-void
.end method

.method public final b(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/d/j/b;->c(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/j/b;->d:Lcom/helpscout/beacon/a/d/d/a;

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/a/d/d/a;->b(I)Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/helpscout/beacon/a/d/d/j/b;->a(Landroid/app/Notification;ILcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V

    :goto_0
    return-void
.end method
