.class public Lorg/apache/commons/digester/SimpleRegexMatcher;
.super Lorg/apache/commons/digester/RegexMatcher;
.source "SimpleRegexMatcher.java"


# static fields
.field private static final baseLog:Lorg/apache/commons/logging/Log;


# instance fields
.field private log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/apache/commons/digester/SimpleRegexMatcher;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/digester/SimpleRegexMatcher;->baseLog:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/commons/digester/RegexMatcher;-><init>()V

    .line 45
    sget-object v0, Lorg/apache/commons/digester/SimpleRegexMatcher;->baseLog:Lorg/apache/commons/logging/Log;

    iput-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private match(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6

    .line 89
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p4, v0, :cond_2

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p3, p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p3, v0, :cond_3

    return v1

    .line 114
    :cond_3
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_6

    .line 147
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camparing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 150
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_5

    add-int/2addr p3, v2

    add-int/2addr p4, v2

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/digester/SimpleRegexMatcher;->match(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_5
    return v1

    :cond_6
    add-int/2addr p3, v2

    add-int/2addr p4, v2

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/digester/SimpleRegexMatcher;->match(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_7
    add-int/2addr p4, v2

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p4, v0, :cond_8

    return v2

    .line 125
    :cond_8
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 127
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Searching for next \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\' char"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 129
    :cond_9
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    :goto_0
    const/4 v3, -0x1

    if-eq p3, v3, :cond_c

    .line 131
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    iget-object v3, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying \'*\' match@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 134
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/digester/SimpleRegexMatcher;->match(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 137
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    goto :goto_0

    .line 139
    :cond_c
    iget-object p1, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "No matches found."

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public getLog()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/digester/SimpleRegexMatcher;->match(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setLog(Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/commons/digester/SimpleRegexMatcher;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method
