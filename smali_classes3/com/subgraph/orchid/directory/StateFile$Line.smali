.class Lcom/subgraph/orchid/directory/StateFile$Line;
.super Ljava/lang/Object;
.source "StateFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/StateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Line"
.end annotation


# instance fields
.field final line:Ljava/lang/String;

.field offset:I

.field final synthetic this$0:Lcom/subgraph/orchid/directory/StateFile;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->this$0:Lcom/subgraph/orchid/directory/StateFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    return-void
.end method

.method private getChar()C
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    iget v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private hasChars()Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private incrementOffset(I)V
    .locals 1

    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    .line 53
    iget-object p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le v0, p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    :cond_0
    return-void
.end method

.method private skipWhitespace()V
    .locals 1

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method nextToken()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->skipWhitespace()V

    .line 66
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseDate()Ljava/util/Date;
    .locals 4

    .line 79
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->skipWhitespace()V

    .line 80
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->this$0:Lcom/subgraph/orchid/directory/StateFile;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/StateFile;->access$000(Lcom/subgraph/orchid/directory/StateFile;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    iget v3, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const/16 v2, 0x13

    .line 85
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/StateFile$Line;->incrementOffset(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
