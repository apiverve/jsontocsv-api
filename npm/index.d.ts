declare module '@apiverve/jsontocsv' {
  export interface jsontocsvOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface jsontocsvResponse {
    status: string;
    error: string | null;
    data: JSONtoCSVConverterData;
    code?: number;
  }


  interface JSONtoCSVConverterData {
      rowCount:    number;
      columnCount: number;
      columns:     string[];
      csv:         string;
  }

  export default class jsontocsvWrapper {
    constructor(options: jsontocsvOptions);

    execute(callback: (error: any, data: jsontocsvResponse | null) => void): Promise<jsontocsvResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: jsontocsvResponse | null) => void): Promise<jsontocsvResponse>;
    execute(query?: Record<string, any>): Promise<jsontocsvResponse>;
  }
}
