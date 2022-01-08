.class public final Lcom/helpscout/beacon/a/d/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/e;


# instance fields
.field private final a:Landroid/app/NotificationManager;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/d;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 1

    const-string v0, "notificationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/g;->a:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/g;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/g;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    const-string v1, "notificationManager.notificationChannels"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/g;->a:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/g;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->K0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/g;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->L0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/a/d/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/g;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->O0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/g;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/a/d/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
