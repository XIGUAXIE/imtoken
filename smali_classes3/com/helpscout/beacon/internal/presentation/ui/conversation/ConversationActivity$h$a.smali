.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;->d:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    move-result-object p1

    return-object p1
.end method
