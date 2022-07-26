.class public Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;
.super Ljava/util/IllegalFormatConversionException;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalFormatConversionCategoryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V
    .registers 6
    .param p1, "expected"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p2, "found"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 198
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const/16 v0, 0x2d

    goto :goto_12

    :cond_c
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_12
    iget-object v2, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    if-nez v2, :cond_19

    const-class v1, Ljava/lang/Object;

    goto :goto_1d

    :cond_19
    iget-object v2, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    aget-object v1, v2, v1

    .line 198
    :goto_1d
    invoke-direct {p0, v0, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .line 201
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 202
    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 203
    return-void
.end method


# virtual methods
.method public getExpected()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2

    .line 206
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getFound()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2

    .line 210
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Expected category %s but found %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
