.class final Lcom/helpscout/common/utils/FullName$initials$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FullName.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/utils/FullName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/common/utils/FullName;


# direct methods
.method constructor <init>(Lcom/helpscout/common/utils/FullName;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/utils/FullName$initials$2;->this$0:Lcom/helpscout/common/utils/FullName;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/helpscout/common/utils/FullName$initials$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/helpscout/common/utils/FullName$initials$2;->this$0:Lcom/helpscout/common/utils/FullName;

    invoke-virtual {v0}, Lcom/helpscout/common/utils/FullName;->getFirst()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/common/utils/FullName$initials$2;->this$0:Lcom/helpscout/common/utils/FullName;

    invoke-virtual {v1}, Lcom/helpscout/common/utils/FullName;->getLast()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/common/utils/FullNameKt;->access$initials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
