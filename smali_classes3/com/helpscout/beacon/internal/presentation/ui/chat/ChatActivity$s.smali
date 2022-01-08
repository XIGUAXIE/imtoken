.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;
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

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getMessageInput()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
