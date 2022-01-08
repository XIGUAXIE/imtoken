.class final Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;->b:Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;->a:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;->b:Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;->a(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
