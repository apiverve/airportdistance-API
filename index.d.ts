declare module '@apiverve/airportdistance' {
  export interface airportdistanceOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface airportdistanceResponse {
    status: string;
    error: string | null;
    data: any;
    code?: number;
  }

  export default class airportdistanceWrapper {
    constructor(options: airportdistanceOptions);

    execute(callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query?: Record<string, any>): Promise<airportdistanceResponse>;
  }
}
