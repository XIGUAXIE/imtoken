.class final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
