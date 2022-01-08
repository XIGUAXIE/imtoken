.class final Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;
.super Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ol"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J%\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;",
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
        "Landroid/text/Editable;",
        "text",
        "",
        "openItem",
        "(Landroid/text/Editable;)V",
        "",
        "indentation",
        "",
        "",
        "getReplaces",
        "(Landroid/text/Editable;I)[Ljava/lang/Object;",
        "nextIdx",
        "I",
        "<init>",
        "(I)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private nextIdx:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;-><init>()V

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;->nextIdx:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getReplaces(Landroid/text/Editable;I)[Ljava/lang/Object;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p2, -0x1

    mul-int/lit8 p1, p1, 0x14

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x14

    sub-int/2addr p1, p2

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    return-object p2
.end method

.method public openItem(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->openItem(Landroid/text/Editable;)V

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;->nextIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;->nextIdx:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    const-string v0, ". "

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method
