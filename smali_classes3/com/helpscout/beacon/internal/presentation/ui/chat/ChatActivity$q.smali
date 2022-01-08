.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$i;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
