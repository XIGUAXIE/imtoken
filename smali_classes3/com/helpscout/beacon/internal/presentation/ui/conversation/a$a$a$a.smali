.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.helpscout.beacon.internal.presentation.ui.conversation.ConversationAdapterItem.ShowMore"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a$a;->a(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
