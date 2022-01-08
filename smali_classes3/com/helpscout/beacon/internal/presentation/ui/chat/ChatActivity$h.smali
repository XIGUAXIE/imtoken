.class final synthetic Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$h;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 7

    const-class v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    const/4 v1, 0x1

    const-string v4, "onAttachmentRetry"

    const-string v5, "onAttachmentRetry(Lcom/helpscout/beacon/internal/presentation/ui/chat/model/ChatMediaUi;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
