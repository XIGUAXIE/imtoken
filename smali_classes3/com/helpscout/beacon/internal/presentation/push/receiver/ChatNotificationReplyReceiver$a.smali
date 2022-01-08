.class final Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/a/d/d/h/e/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;->a:Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/a/d/d/h/e/a;
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/a/d/d/h/e/a;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/helpscout/beacon/a/d/d/h/e/a;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/push/receiver/ChatNotificationReplyReceiver$a;->a()Lcom/helpscout/beacon/a/d/d/h/e/a;

    move-result-object v0

    return-object v0
.end method
