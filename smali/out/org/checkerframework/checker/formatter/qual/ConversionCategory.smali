.class public final enum Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
.super Ljava/lang/Enum;
.source "ConversionCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/formatter/qual/ConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field public static final enum UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# instance fields
.field public final chars:Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 33
    new-instance v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "bBhHsS"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 40
    new-instance v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/Byte;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Short;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Integer;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-string v6, "CHAR"

    const-string v10, "cC"

    invoke-direct {v1, v6, v7, v5, v10}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 46
    new-instance v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x5

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Byte;

    aput-object v11, v10, v2

    const-class v11, Ljava/lang/Short;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/Integer;

    aput-object v11, v10, v8

    const-class v11, Ljava/lang/Long;

    aput-object v11, v10, v9

    const-class v11, Ljava/math/BigInteger;

    aput-object v11, v10, v4

    const-string v11, "INT"

    const-string v12, "doxX"

    invoke-direct {v5, v11, v8, v10, v12}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 54
    new-instance v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    aput-object v12, v11, v2

    const-class v12, Ljava/lang/Double;

    aput-object v12, v11, v7

    const-class v12, Ljava/math/BigDecimal;

    aput-object v12, v11, v8

    const-string v12, "FLOAT"

    const-string v13, "eEfgGaA"

    invoke-direct {v10, v12, v9, v11, v13}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 60
    new-instance v11, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v12, v9, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Long;

    aput-object v13, v12, v2

    const-class v13, Ljava/util/Calendar;

    aput-object v13, v12, v7

    const-class v13, Ljava/util/Date;

    aput-object v13, v12, v8

    const-string v13, "TIME"

    const-string v14, "tT"

    invoke-direct {v11, v13, v4, v12, v14}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 80
    new-instance v12, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/Byte;

    aput-object v14, v13, v2

    const-class v14, Ljava/lang/Short;

    aput-object v14, v13, v7

    const-class v14, Ljava/lang/Integer;

    aput-object v14, v13, v8

    const-string v14, "CHAR_AND_INT"

    invoke-direct {v12, v14, v6, v13, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 82
    new-instance v13, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v14, v7, [Ljava/lang/Class;

    const-class v15, Ljava/lang/Long;

    aput-object v15, v14, v2

    const-string v15, "INT_AND_TIME"

    const/4 v6, 0x6

    invoke-direct {v13, v15, v6, v14, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 94
    new-instance v14, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    new-array v15, v2, [Ljava/lang/Class;

    const-string v6, "NULL"

    const/4 v4, 0x7

    invoke-direct {v14, v6, v4, v15, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 107
    new-instance v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v15, "UNUSED"

    const/16 v4, 0x8

    invoke-direct {v6, v15, v4, v3, v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 31
    const/16 v3, 0x9

    new-array v3, v3, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v0, v3, v2

    aput-object v1, v3, v7

    aput-object v5, v3, v8

    aput-object v10, v3, v9

    const/4 v0, 0x4

    aput-object v11, v3, v0

    const/4 v0, 0x5

    aput-object v12, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    aput-object v6, v3, v4

    sput-object v3, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p4, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    .line 111
    iput-object p4, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 140
    .local p0, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private className(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_7

    .line 238
    const-string v0, "boolean"

    return-object v0

    .line 240
    :cond_7
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_e

    .line 241
    const-string v0, "char"

    return-object v0

    .line 243
    :cond_e
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_15

    .line 244
    const-string v0, "byte"

    return-object v0

    .line 246
    :cond_15
    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_1c

    .line 247
    const-string v0, "short"

    return-object v0

    .line 249
    :cond_1c
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_23

    .line 250
    const-string v0, "int"

    return-object v0

    .line 252
    :cond_23
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_2a

    .line 253
    const-string v0, "long"

    return-object v0

    .line 255
    :cond_2a
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_31

    .line 256
    const-string v0, "float"

    return-object v0

    .line 258
    :cond_31
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_38

    .line 259
    const-string v0, "double"

    return-object v0

    .line 261
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromConversionChar(C)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 7
    .param p0, "c"    # C

    .line 131
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    :goto_1c
    if-ge v3, v0, :cond_30

    aget-object v2, v1, v3

    .line 132
    .local v2, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v4, v2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 133
    return-object v2

    .line 131
    .end local v2    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 136
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad conversion character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 10
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 163
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_5

    .line 164
    return-object p1

    .line 166
    :cond_5
    if-ne p1, v0, :cond_8

    .line 167
    return-object p0

    .line 169
    :cond_8
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_d

    .line 170
    return-object p1

    .line 172
    :cond_d
    if-ne p1, v0, :cond_10

    .line 173
    return-object p0

    .line 176
    :cond_10
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    iget-object v1, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 178
    .local v1, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 180
    const/4 v2, 0x7

    new-array v3, v2, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v6, v3, v4

    const/4 v4, 0x5

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v6, v3, v4

    const/4 v4, 0x6

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v6, v3, v4

    :goto_45
    if-ge v5, v2, :cond_59

    aget-object v4, v3, v5

    .line 183
    .local v4, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v6, v4, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 184
    .local v6, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 185
    return-object v4

    .line 180
    .end local v4    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v6    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 188
    :cond_59
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static isSubsetOf(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Z
    .registers 3
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 144
    invoke-static {p0, p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static union(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 10
    .param p0, "a"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p1, "b"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 207
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_68

    if-ne p1, v0, :cond_7

    goto :goto_68

    .line 210
    :cond_7
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p0, v0, :cond_67

    if-ne p1, v0, :cond_e

    goto :goto_67

    .line 213
    :cond_e
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR_AND_INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v0, :cond_16

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-eq p1, v1, :cond_1c

    :cond_16
    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT_AND_TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne p0, v1, :cond_1f

    if-ne p1, v0, :cond_1f

    .line 217
    :cond_1c
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0

    .line 220
    :cond_1f
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v2}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 221
    .local v2, "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    iget-object v3, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 222
    .local v3, "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 224
    const/4 v4, 0x7

    new-array v5, v4, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    sget-object v6, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->CHAR:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v5, v0

    const/4 v0, 0x4

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->INT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v5, v0

    const/4 v0, 0x5

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->FLOAT:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v5, v0

    const/4 v0, 0x6

    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->TIME:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v1, v5, v0

    :goto_50
    if-ge v7, v4, :cond_64

    aget-object v0, v5, v7

    .line 227
    .local v0, "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v1, v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 228
    .local v1, "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 229
    return-object v0

    .line 224
    .end local v0    # "v":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v1    # "vs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 233
    :cond_64
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->GENERAL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0

    .line 211
    .end local v2    # "as":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    .end local v3    # "bs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    :cond_67
    :goto_67
    return-object v0

    .line 208
    :cond_68
    :goto_68
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 1

    .line 31
    sget-object v0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->$VALUES:[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " conversion category (one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/4 v1, 0x1

    .line 271
    .local v1, "first":Z
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_29

    aget-object v5, v2, v4

    .line 272
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v1, :cond_1e

    .line 273
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1e
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const/4 v1, 0x0

    .line 271
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 278
    :cond_29
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
