.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "+",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->a(ILjava/util/List;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    sget-object p2, Lcom/helpscout/beacon/a/d/c/e$e;->a:Lcom/helpscout/beacon/a/d/c/e$e;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k$b;->a(ILjava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
