.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
