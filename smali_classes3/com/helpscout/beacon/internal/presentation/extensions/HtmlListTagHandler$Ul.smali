.class final Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ul;
.super Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ul"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ul;",
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
        "Landroid/text/Editable;",
        "text",
        "",
        "indentation",
        "",
        "",
        "getReplaces",
        "(Landroid/text/Editable;I)[Ljava/lang/Object;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected getReplaces(Landroid/text/Editable;I)[Ljava/lang/Object;
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xa

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->access$getBULLET_SPAN$cp()Landroid/text/style/BulletSpan;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v2

    sub-int/2addr p1, v2

    if-le p2, v0, :cond_0

    add-int/lit8 v2, p2, -0x2

    mul-int/lit8 v2, v2, 0x14

    sub-int/2addr p1, v2

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x14

    invoke-direct {v2, p2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 p2, 0x0

    aput-object v2, v0, p2

    new-instance p2, Landroid/text/style/BulletSpan;

    invoke-direct {p2, p1}, Landroid/text/style/BulletSpan;-><init>(I)V

    aput-object p2, v0, v1

    return-object v0
.end method
