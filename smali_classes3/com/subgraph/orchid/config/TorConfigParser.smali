.class public Lcom/subgraph/orchid/config/TorConfigParser;
.super Ljava/lang/Object;
.source "TorConfigParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAutoBool(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .locals 3

    const-string v0, "auto"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object p1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->AUTO:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-object p1

    :cond_0
    const-string v0, "true"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object p1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->TRUE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-object p1

    :cond_1
    const-string v0, "false"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object p1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-object p1

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse AutoBool value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCSV(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseFileValue(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "~/"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 42
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseIntegerList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseIntervalValue(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/subgraph/orchid/config/TorConfigInterval;->createFrom(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public parseValue(Ljava/lang/String;Lcom/subgraph/orchid/TorConfig$ConfigVarType;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object v0, Lcom/subgraph/orchid/config/TorConfigParser$1;->$SwitchMap$com$subgraph$orchid$TorConfig$ConfigVarType:[I

    invoke-virtual {p2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 30
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseAutoBool(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseCSV(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :pswitch_2
    return-object p1

    .line 24
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseIntegerList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseFileValue(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseIntervalValue(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_7
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
